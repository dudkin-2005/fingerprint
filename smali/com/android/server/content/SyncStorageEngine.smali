.class public Lcom/android/server/content/SyncStorageEngine;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$MyHandler;,
        Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x3

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_FEED:I = 0x5

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_OTHER:I = 0x0

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mGrantSyncAdaptersAccountAccess:Z

.field private final mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

.field private volatile mIsClockValid:Z

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 136
    const-string v0, "OTHER"

    const-string v1, "LOCAL"

    const-string v2, "POLL"

    const-string v3, "USER"

    const-string v4, "PERIODIC"

    const-string v5, "FEED"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 168
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 427
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 430
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 440
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 446
    const/16 v1, 0x1c

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 477
    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 478
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 490
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 491
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 492
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 493
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 495
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 497
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 500
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 501
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "sync"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 502
    .local v2, "syncDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 504
    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 506
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "accounts.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-accounts"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 507
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "status.bin"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-status"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 508
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "stats.bin"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-stats"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 510
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 511
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 512
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 513
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 514
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 515
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 516
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 518
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v3}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 519
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 520
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Loaded "

    aput-object v6, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, " items"

    aput-object v8, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 521
    move v4, v0

    .line 521
    .local v4, "i":I
    :goto_f9
    if-ge v4, v3, :cond_10d

    .line 522
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 521
    add-int/lit8 v4, v4, 0x1

    goto :goto_f9

    .line 525
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_10d
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .registers 1

    .line 81
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/SyncStorageEngine;

    .line 81
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncStorageEngine;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/content/SyncStorageEngine;

    .line 81
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncStorageEngine;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/content/SyncStorageEngine;

    .line 81
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .registers 6
    .param p0, "syncTimeSeconds"    # J

    .line 608
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 612
    const-wide/16 v0, 0x0

    return-wide v0

    .line 613
    :cond_9
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 614
    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 617
    :cond_19
    const-wide/16 v0, 0xd80

    return-wide v0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .line 1505
    if-gez p2, :cond_b

    .line 1506
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1507
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1508
    const/4 p3, 0x1

    .line 1510
    :cond_b
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1511
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created a new AuthorityInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_2a
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1514
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1515
    if-eqz p3, :cond_39

    .line 1516
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1518
    :cond_39
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 5
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1434
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1435
    .local v0, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1458
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1459
    .local v0, "au":Landroid/accounts/AccountAndUser;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1460
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_39

    .line 1461
    if-eqz p2, :cond_38

    .line 1462
    const-string v4, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1463
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": unknown account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_38
    return-object v2

    .line 1468
    :cond_39
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1469
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v4, :cond_6b

    .line 1470
    if-eqz p2, :cond_6a

    .line 1471
    const-string v5, "SyncManager"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1472
    const-string v3, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": unknown provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_6a
    return-object v2

    .line 1477
    :cond_6b
    return-object v4
.end method

.method private getCurrentDayLocked()I
    .registers 6

    .line 1439
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1440
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1441
    .local v0, "dayOfYear":I
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 1442
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1443
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1444
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1445
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1447
    :cond_3c
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1310
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1311
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1339
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_15

    .line 1340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1341
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1343
    :cond_15
    return-object v0
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .line 2002
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .line 2006
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .line 1488
    const/4 v0, 0x0

    .line 1489
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v2, v3}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1490
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1491
    .local v2, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v2, :cond_1f

    .line 1492
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v3, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    move-object v2, v3

    .line 1493
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    :cond_1f
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1496
    if-nez v0, :cond_37

    .line 1497
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1498
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    :cond_37
    return-object v0
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4
    .param p1, "authorityId"    # I

    .line 1550
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1551
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_15

    .line 1552
    new-instance v1, Landroid/content/SyncStatusInfo;

    invoke-direct {v1, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    move-object v0, v1

    .line 1553
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1555
    :cond_15
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .line 540
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_7

    .line 543
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0

    .line 541
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 532
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_5

    .line 533
    return-void

    .line 535
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 536
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 537
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .registers 4
    .param p1, "syncDir"    # Ljava/io/File;

    .line 1708
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1709
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1710
    return-void

    .line 1712
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1714
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 11

    .line 1721
    const/4 v0, 0x0

    .line 1723
    .local v0, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1724
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1725
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "writeNeeded":Z
    :goto_f
    if-ge v0, v2, :cond_52

    .line 1726
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1728
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1729
    .local v6, "newAuthorityName":Ljava/lang/String;
    if-nez v6, :cond_28

    .line 1730
    goto :goto_4f

    .line 1735
    :cond_28
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    iget-boolean v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v7, :cond_30

    .line 1740
    goto :goto_4f

    .line 1744
    :cond_30
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v7, v8, v6, v9}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1748
    .local v7, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string v8, "cleanup"

    invoke-direct {p0, v7, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_46

    .line 1749
    goto :goto_4f

    .line 1752
    :cond_46
    const/4 v8, -0x1

    .line 1753
    invoke-direct {p0, v7, v8, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 1754
    .local v8, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1755
    const/4 v4, 0x1

    .line 1725
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthorityName":Ljava/lang/String;
    .end local v7    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v8    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1758
    .end local v0    # "i":I
    :cond_52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1759
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v3}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1764
    const/4 v4, 0x1

    .line 1765
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_56

    .line 1767
    :cond_73
    return v4
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 528
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "version"    # I
    .param p3, "validator"    # Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1787
    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 1788
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v5, -0x1

    move v6, v5

    .line 1790
    .local v6, "id":I
    const/4 v7, 0x0

    :try_start_a
    const-string/jumbo v0, "id"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_15} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_15} :catch_17

    move v6, v0

    .line 1795
    :goto_16
    goto :goto_2a

    .line 1793
    :catch_17
    move-exception v0

    .line 1794
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "SyncManager"

    const-string/jumbo v9, "the id of the authority is null"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1794
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_2a

    .line 1791
    :catch_21
    move-exception v0

    .line 1792
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "SyncManager"

    const-string v9, "error parsing the id of the authority"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1792
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_16

    .line 1796
    :goto_2a
    if-ltz v6, :cond_1b6

    .line 1797
    const-string v0, "authority"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1798
    .local v8, "authorityName":Ljava/lang/String;
    const-string v0, "enabled"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1799
    .local v9, "enabled":Ljava/lang/String;
    const-string/jumbo v0, "syncable"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, "syncable":Ljava/lang/String;
    const-string v10, "account"

    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1801
    .local v10, "accountName":Ljava/lang/String;
    const-string/jumbo v11, "type"

    invoke-interface {v2, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1802
    .local v11, "accountType":Ljava/lang/String;
    const-string/jumbo v12, "user"

    invoke-interface {v2, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1803
    .local v12, "user":Ljava/lang/String;
    const-string/jumbo v13, "package"

    invoke-interface {v2, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1804
    .local v13, "packageName":Ljava/lang/String;
    const-string v14, "class"

    invoke-interface {v2, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1805
    .local v7, "className":Ljava/lang/String;
    if-nez v12, :cond_64

    const/4 v15, 0x0

    goto :goto_68

    :cond_64
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1806
    .local v15, "userId":I
    :goto_68
    if-nez v11, :cond_72

    if-nez v13, :cond_72

    .line 1807
    const-string v11, "com.google"

    .line 1808
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1810
    .end local v0    # "syncable":Ljava/lang/String;
    .local v5, "syncable":Ljava/lang/String;
    :cond_72
    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1811
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string v4, "SyncManagerFile"

    const/4 v14, 0x2

    invoke-static {v4, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 1812
    const-string v4, "SyncManagerFile"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding authority: account="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accountType="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " auth="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " syncable="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_d2
    const/4 v14, 0x1

    if-nez v0, :cond_14e

    .line 1823
    const-string v2, "SyncManagerFile"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 1824
    const-string v2, "SyncManagerFile"

    const-string v4, "Creating authority entry"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_e5
    if-eqz v10, :cond_14e

    if-eqz v8, :cond_14e

    .line 1827
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4, v8, v15}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1830
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 1831
    invoke-virtual {v3, v8, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 1832
    const/4 v4, 0x0

    invoke-direct {v1, v2, v6, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1839
    if-lez p2, :cond_10d

    .line 1840
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1849
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_10d
    move-object v4, v0

    const/16 v16, 0x0

    goto :goto_151

    .line 1843
    .restart local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_111
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v17, "35028827"

    const/16 v16, 0x0

    aput-object v17, v4, v16

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "account:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " provider:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " user:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x2

    aput-object v1, v4, v14

    const v1, 0x534e4554

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    goto :goto_150

    .line 1849
    :cond_14e
    const/16 v16, 0x0

    :goto_150
    move-object v4, v0

    .line 1849
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_151
    if-eqz v4, :cond_188

    .line 1850
    if-eqz v9, :cond_15f

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    goto :goto_15f

    :cond_15c
    move/from16 v0, v16

    goto :goto_160

    :cond_15f
    :goto_15f
    const/4 v0, 0x1

    :goto_160
    iput-boolean v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1852
    if-nez v5, :cond_166

    .line 1853
    const/4 v0, -0x1

    goto :goto_16a

    :cond_166
    :try_start_166
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_16a
    iput v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_16c
    .catch Ljava/lang/NumberFormatException; {:try_start_166 .. :try_end_16c} :catch_16d

    .line 1864
    :goto_16c
    goto :goto_1b6

    .line 1854
    :catch_16d
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 1858
    const/4 v1, -0x1

    iput v1, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_16c

    .line 1860
    :cond_17b
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 1861
    const/4 v1, 0x1

    goto :goto_185

    :cond_183
    move/from16 v1, v16

    :goto_185
    iput v1, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 1861
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_16c

    .line 1866
    :cond_188
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure adding authority: account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " syncable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    .end local v5    # "syncable":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "authorityName":Ljava/lang/String;
    .end local v9    # "enabled":Ljava/lang/String;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "userId":I
    :cond_1b6
    :goto_1b6
    return-object v4
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1916
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1917
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "type"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1918
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "value1"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1919
    .local v3, "value1":Ljava/lang/String;
    const-string/jumbo v4, "value2"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1922
    .local v1, "value2":Ljava/lang/String;
    :try_start_1d
    const-string/jumbo v4, "long"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1923
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9f

    .line 1924
    :cond_2f
    const-string/jumbo v4, "integer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1925
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9f

    .line 1926
    :cond_40
    const-string v4, "double"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1927
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_9f

    .line 1928
    :cond_50
    const-string v4, "float"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1929
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_9f

    .line 1930
    :cond_60
    const-string v4, "boolean"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1931
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9f

    .line 1932
    :cond_70
    const-string/jumbo v4, "string"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1933
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    .line 1934
    :cond_7d
    const-string v4, "account"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 1935
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_8d} :catch_97
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_8d} :catch_8e

    goto :goto_9f

    .line 1939
    :catch_8e
    move-exception v4

    .line 1940
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v5, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    .end local v4    # "e":Ljava/lang/NullPointerException;
    goto :goto_a0

    .line 1937
    :catch_97
    move-exception v4

    .line 1938
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1941
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_9f
    :goto_9f
    nop

    .line 1942
    :goto_a0
    return-void
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1771
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1772
    .local v0, "user":Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 1774
    .local v3, "userId":I
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_e} :catch_10

    move v3, v4

    .line 1779
    :goto_f
    goto :goto_23

    .line 1777
    :catch_10
    move-exception v4

    .line 1778
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v5, "SyncManager"

    const-string/jumbo v6, "the user in listen-for-tickles is null"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1778
    .end local v4    # "e":Ljava/lang/NullPointerException;
    goto :goto_23

    .line 1775
    :catch_1a
    move-exception v4

    .line 1776
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SyncManager"

    const-string v6, "error parsing the user for listen-for-tickles"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1776
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    goto :goto_f

    .line 1780
    :goto_23
    const-string v4, "enabled"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1781
    .local v1, "enabled":Ljava/lang/String;
    if-eqz v1, :cond_33

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_33

    :cond_32
    goto :goto_34

    :cond_33
    :goto_33
    const/4 v2, 0x1

    .line 1782
    .local v2, "listen":Z
    :goto_34
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1783
    return-void
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .registers 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-object/from16 v1, p1

    .line 1879
    move-object/from16 v2, p2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1880
    .local v6, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "period"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1881
    .local v11, "periodValue":Ljava/lang/String;
    const-string v0, "flex"

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 1885
    .local v12, "flexValue":Ljava/lang/String;
    :try_start_18
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_91
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1c} :catch_86

    move-wide v13, v4

    .line 1892
    .local v13, "period":J
    nop

    .line 1891
    nop

    .line 1894
    :try_start_1f
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_23} :catch_4b
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_23} :catch_26

    .line 1904
    .local v15, "flextime":J
    :goto_23
    nop

    .line 1906
    :goto_24
    move-wide v15, v3

    goto :goto_70

    .line 1900
    .end local v15    # "flextime":J
    :catch_26
    move-exception v0

    move-object v3, v0

    .line 1901
    .local v0, "expected":Ljava/lang/NullPointerException;
    invoke-static {v13, v14}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v3

    .line 1902
    .local v3, "flextime":J
    const-string v5, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " flex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "expected":Ljava/lang/NullPointerException;
    goto :goto_24

    .line 1895
    .end local v3    # "flextime":J
    :catch_4b
    move-exception v0

    move-object v3, v0

    .line 1896
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v13, v14}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v3

    .line 1897
    .restart local v3    # "flextime":J
    const-string v5, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", using default: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_23

    .line 1906
    .end local v3    # "flextime":J
    .restart local v15    # "flextime":J
    :goto_70
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v3, v0

    move-wide v7, v13

    move-wide v9, v15

    invoke-direct/range {v3 .. v10}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1911
    .local v0, "periodicSync":Landroid/content/PeriodicSync;
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    return-object v0

    .line 1889
    .end local v0    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v13    # "period":J
    .end local v15    # "flextime":J
    :catch_86
    move-exception v0

    move-object v4, v0

    .line 1890
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "SyncManager"

    const-string/jumbo v5, "the period of a periodic sync is null"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1891
    return-object v3

    .line 1886
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_91
    move-exception v0

    move-object v4, v0

    .line 1887
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "SyncManager"

    const-string v5, "error parsing the period of a periodic sync"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1888
    return-object v3
.end method

.method private readAccountInfoLocked()V
    .registers 21

    .line 1595
    move-object/from16 v1, p0

    const/4 v2, -0x1

    .line 1596
    .local v2, "highestAuthorityId":I
    const/4 v3, 0x0

    move-object v4, v3

    .line 1598
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_5
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v4, v0

    .line 1599
    const-string v0, "SyncManagerFile"

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1600
    const-string v0, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_31
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v6, v0

    .line 1603
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1604
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1604
    .local v0, "eventType":I
    :goto_43
    move v7, v0

    .line 1605
    .end local v0    # "eventType":I
    .local v7, "eventType":I
    const/4 v8, 0x1

    if-eq v7, v5, :cond_4e

    if-eq v7, v8, :cond_4e

    .line 1607
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1607
    .end local v7    # "eventType":I
    .restart local v0    # "eventType":I
    goto :goto_43

    .line 1609
    .end local v0    # "eventType":I
    .restart local v7    # "eventType":I
    :cond_4e
    if-ne v7, v8, :cond_69

    .line 1610
    const-string v0, "SyncManager"

    const-string v3, "No initial accounts"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_57} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_57} :catch_1b4
    .catchall {:try_start_5 .. :try_end_57} :catchall_1b0

    .line 1690
    add-int/lit8 v0, v2, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1691
    if-eqz v4, :cond_68

    .line 1693
    :try_start_63
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 1695
    goto :goto_68

    .line 1694
    :catch_67
    move-exception v0

    .line 1611
    :cond_68
    :goto_68
    return-void

    .line 1614
    :cond_69
    :try_start_69
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1615
    .local v9, "tagName":Ljava/lang/String;
    const-string v0, "accounts"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 1616
    const-string/jumbo v0, "listen-for-tickles"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1617
    .local v10, "listen":Ljava/lang/String;
    const-string/jumbo v0, "version"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_85} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_85} :catch_1b4
    .catchall {:try_start_69 .. :try_end_85} :catchall_1b0

    move-object v11, v0

    .line 1620
    .local v11, "versionString":Ljava/lang/String;
    const/4 v12, 0x0

    if-nez v11, :cond_8b

    move v0, v12

    goto :goto_8f

    :cond_8b
    :try_start_8b
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8f} :catch_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8f} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_1b4
    .catchall {:try_start_8b .. :try_end_8f} :catchall_1b0

    .line 1623
    .local v0, "version":I
    :goto_8f
    goto :goto_94

    .line 1621
    .end local v0    # "version":I
    :catch_90
    move-exception v0

    move-object v13, v0

    .line 1622
    .local v0, "e":Ljava/lang/NumberFormatException;
    nop

    .line 1622
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    move v0, v12

    .line 1622
    .local v0, "version":I
    :goto_94
    move v13, v0

    .line 1625
    .end local v0    # "version":I
    .local v13, "version":I
    const/4 v14, 0x3

    if-ge v13, v14, :cond_9a

    .line 1626
    :try_start_98
    iput-boolean v8, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    .line 1629
    :cond_9a
    const-string/jumbo v0, "nextAuthorityId"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_a1} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a1} :catch_1b4
    .catchall {:try_start_98 .. :try_end_a1} :catchall_1b0

    move-object v15, v0

    .line 1631
    .local v15, "nextIdString":Ljava/lang/String;
    if-nez v15, :cond_a6

    move v0, v12

    goto :goto_aa

    :cond_a6
    :try_start_a6
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1632
    .local v0, "id":I
    :goto_aa
    iget v8, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_b2} :catch_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a6 .. :try_end_b2} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b2} :catch_1b4
    .catchall {:try_start_a6 .. :try_end_b2} :catchall_1b0

    .line 1635
    .end local v0    # "id":I
    goto :goto_b4

    .line 1633
    :catch_b3
    move-exception v0

    .line 1636
    :goto_b4
    :try_start_b4
    const-string/jumbo v0, "offsetInSeconds"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b4 .. :try_end_bb} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bb} :catch_1b4
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_1b0

    move-object v3, v0

    .line 1638
    .local v3, "offsetString":Ljava/lang/String;
    if-nez v3, :cond_c0

    move v0, v12

    goto :goto_c4

    :cond_c0
    :try_start_c0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_c4
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_c6} :catch_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_c6} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c6} :catch_1b4
    .catchall {:try_start_c0 .. :try_end_c6} :catchall_1b0

    .line 1641
    goto :goto_ca

    .line 1639
    :catch_c7
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_c8
    iput v12, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1642
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_ca
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    if-nez v0, :cond_e3

    .line 1643
    new-instance v0, Ljava/util/Random;

    move-object/from16 v17, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1643
    .end local v15    # "nextIdString":Ljava/lang/String;
    .local v17, "nextIdString":Ljava/lang/String;
    invoke-direct {v0, v14, v15}, Ljava/util/Random;-><init>(J)V

    .line 1644
    .local v0, "random":Ljava/util/Random;
    const v8, 0x15180

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1644
    .end local v0    # "random":Ljava/util/Random;
    goto :goto_e5

    .line 1646
    .end local v17    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "nextIdString":Ljava/lang/String;
    :cond_e3
    move-object/from16 v17, v15

    .line 1646
    .end local v15    # "nextIdString":Ljava/lang/String;
    .restart local v17    # "nextIdString":Ljava/lang/String;
    :goto_e5
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    if-eqz v10, :cond_f2

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f0

    goto :goto_f2

    :cond_f0
    move v8, v12

    goto :goto_f3

    :cond_f2
    :goto_f2
    const/4 v8, 0x1

    :goto_f3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1647
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1648
    .end local v7    # "eventType":I
    .local v0, "eventType":I
    const/4 v7, 0x0

    .line 1649
    .local v7, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v8, 0x0

    .line 1650
    .local v8, "periodicSync":Landroid/content/PeriodicSync;
    new-instance v14, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    iget-object v15, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V

    .line 1652
    .local v14, "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    :goto_107
    if-ne v0, v5, :cond_189

    .line 1653
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 1654
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ne v15, v5, :cond_158

    .line 1655
    const-string v15, "authority"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_149

    .line 1656
    invoke-direct {v1, v6, v13, v14}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v15

    move-object v7, v15

    .line 1657
    const/4 v8, 0x0

    .line 1658
    if-eqz v7, :cond_12c

    .line 1659
    iget v15, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v15, v2, :cond_189

    .line 1660
    iget v15, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move v2, v15

    goto :goto_189

    .line 1663
    :cond_12c
    const/4 v15, 0x3

    new-array v5, v15, [Ljava/lang/Object;

    const-string v15, "26513719"

    aput-object v15, v5, v12

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v5, v16

    const-string v15, "Malformed authority"

    const/16 v18, 0x2

    aput-object v15, v5, v18

    const v15, 0x534e4554

    invoke-static {v15, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_18b

    .line 1666
    :cond_149
    move/from16 v18, v5

    const-string/jumbo v5, "listenForTickles"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 1667
    invoke-direct {v1, v6}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_18b

    .line 1669
    :cond_158
    move/from16 v18, v5

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v15, 0x3

    if-ne v5, v15, :cond_172

    .line 1670
    const-string/jumbo v5, "periodicSync"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    if-eqz v7, :cond_18c

    .line 1671
    invoke-direct {v1, v6, v7}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v5

    .line 1679
    .end local v8    # "periodicSync":Landroid/content/PeriodicSync;
    .local v5, "periodicSync":Landroid/content/PeriodicSync;
    move-object v8, v5

    goto :goto_18c

    .line 1673
    .end local v5    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v8    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_172
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v12, 0x4

    if-ne v5, v12, :cond_18c

    if-eqz v8, :cond_18c

    .line 1674
    const-string v5, "extra"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 1675
    iget-object v5, v8, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v6, v5}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    goto :goto_18c

    .line 1679
    :cond_189
    :goto_189
    move/from16 v18, v5

    :cond_18b
    :goto_18b
    const/4 v15, 0x3

    :cond_18c
    :goto_18c
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c8 .. :try_end_190} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_190} :catch_1b4
    .catchall {:try_start_c8 .. :try_end_190} :catchall_1b0

    move v0, v5

    .line 1680
    const/4 v5, 0x1

    if-ne v0, v5, :cond_195

    .line 1680
    .end local v0    # "eventType":I
    .end local v3    # "offsetString":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v8    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "versionString":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v14    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v17    # "nextIdString":Ljava/lang/String;
    goto :goto_19a

    .line 1650
    .restart local v0    # "eventType":I
    .restart local v3    # "offsetString":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v8    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v11    # "versionString":Ljava/lang/String;
    .restart local v13    # "version":I
    .restart local v14    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .restart local v17    # "nextIdString":Ljava/lang/String;
    :cond_195
    move/from16 v5, v18

    const/4 v12, 0x0

    goto/16 :goto_107

    .line 1690
    .end local v0    # "eventType":I
    .end local v3    # "offsetString":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v8    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "versionString":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v14    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v17    # "nextIdString":Ljava/lang/String;
    :cond_19a
    :goto_19a
    add-int/lit8 v0, v2, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1691
    if-eqz v4, :cond_1ac

    .line 1693
    :try_start_1a6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_1aa

    .line 1695
    :goto_1a9
    goto :goto_1ac

    .line 1694
    :catch_1aa
    move-exception v0

    goto :goto_1a9

    .line 1699
    :cond_1ac
    :goto_1ac
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1700
    return-void

    .line 1690
    :catchall_1b0
    move-exception v0

    move v3, v2

    move-object v2, v0

    goto :goto_1f4

    .line 1685
    :catch_1b4
    move-exception v0

    move-object v3, v0

    .line 1686
    .local v3, "e":Ljava/io/IOException;
    if-nez v4, :cond_1c0

    :try_start_1b8
    const-string v0, "SyncManager"

    const-string v5, "No initial accounts"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c7

    .line 1687
    :cond_1c0
    const-string v0, "SyncManager"

    const-string v5, "Error reading accounts"

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c7
    .catchall {:try_start_1b8 .. :try_end_1c7} :catchall_1b0

    .line 1690
    :goto_1c7
    add-int/lit8 v0, v2, 0x1

    iget v5, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1691
    if-eqz v4, :cond_1d8

    .line 1693
    :try_start_1d3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1d6
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1d6} :catch_1d7

    .line 1695
    goto :goto_1d8

    .line 1694
    :catch_1d7
    move-exception v0

    .line 1688
    :cond_1d8
    :goto_1d8
    return-void

    .line 1682
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1d9
    move-exception v0

    move-object v3, v0

    .line 1683
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1db
    const-string v0, "SyncManager"

    const-string v5, "Error reading accounts"

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e2
    .catchall {:try_start_1db .. :try_end_1e2} :catchall_1b0

    .line 1690
    add-int/lit8 v0, v2, 0x1

    iget v5, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1691
    if-eqz v4, :cond_1f3

    .line 1693
    :try_start_1ee
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_1f2

    .line 1695
    goto :goto_1f3

    .line 1694
    :catch_1f2
    move-exception v0

    .line 1684
    :cond_1f3
    :goto_1f3
    return-void

    .line 1690
    .end local v2    # "highestAuthorityId":I
    .local v3, "highestAuthorityId":I
    :goto_1f4
    add-int/lit8 v0, v3, 0x1

    iget v5, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1691
    if-eqz v4, :cond_205

    .line 1693
    :try_start_200
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_203
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_203} :catch_204

    .line 1695
    goto :goto_205

    .line 1694
    :catch_204
    move-exception v0

    .line 1695
    :cond_205
    :goto_205
    throw v2
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .registers 22

    .line 2015
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "syncmanager.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2016
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2017
    return-void

    .line 2019
    :cond_12
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2020
    .local v3, "path":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v5, v4

    .line 2022
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x1

    :try_start_19
    invoke-static {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_1d} :catch_1f

    move-object v5, v0

    .line 2025
    goto :goto_20

    .line 2024
    :catch_1f
    move-exception v0

    .line 2027
    :goto_20
    if-eqz v5, :cond_2ad

    .line 2028
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/16 v7, 0xb

    const/4 v15, 0x0

    if-lt v0, v7, :cond_2d

    move v0, v6

    goto :goto_2e

    :cond_2d
    move v0, v15

    .line 2031
    .local v0, "hasType":Z
    :goto_2e
    const-string v7, "SyncManagerFile"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 2032
    const-string v7, "SyncManagerFile"

    const-string v8, "Reading legacy sync accounts db"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_3e
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v14, v7

    .line 2035
    .local v14, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v7, "stats, status"

    invoke-virtual {v14, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2036
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v13, v7

    .line 2037
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "_id"

    const-string/jumbo v8, "status._id as _id"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    const-string v7, "account"

    const-string/jumbo v8, "stats.account as account"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    if-eqz v0, :cond_6a

    .line 2040
    const-string v7, "account_type"

    const-string/jumbo v8, "stats.account_type as account_type"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    :cond_6a
    const-string v7, "authority"

    const-string/jumbo v8, "stats.authority as authority"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    const-string/jumbo v7, "totalElapsedTime"

    const-string/jumbo v8, "totalElapsedTime"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    const-string/jumbo v7, "numSyncs"

    const-string/jumbo v8, "numSyncs"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    const-string/jumbo v7, "numSourceLocal"

    const-string/jumbo v8, "numSourceLocal"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    const-string/jumbo v7, "numSourcePoll"

    const-string/jumbo v8, "numSourcePoll"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    const-string/jumbo v7, "numSourceServer"

    const-string/jumbo v8, "numSourceServer"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    const-string/jumbo v7, "numSourceUser"

    const-string/jumbo v8, "numSourceUser"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    const-string/jumbo v7, "lastSuccessSource"

    const-string/jumbo v8, "lastSuccessSource"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    const-string/jumbo v7, "lastSuccessTime"

    const-string/jumbo v8, "lastSuccessTime"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    const-string/jumbo v7, "lastFailureSource"

    const-string/jumbo v8, "lastFailureSource"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    const-string/jumbo v7, "lastFailureTime"

    const-string/jumbo v8, "lastFailureTime"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    const-string/jumbo v7, "lastFailureMesg"

    const-string/jumbo v8, "lastFailureMesg"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    const-string/jumbo v7, "pending"

    const-string/jumbo v8, "pending"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    invoke-virtual {v14, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2056
    const-string/jumbo v7, "stats._id = status.stats_id"

    invoke-virtual {v14, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2057
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v14

    move-object v8, v5

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    .line 2057
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v18, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v16, v14

    move-object/from16 v14, v17

    .line 2057
    .end local v14    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v16, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2057
    .local v7, "c":Landroid/database/Cursor;
    :goto_fd
    move-object v14, v7

    .line 2058
    .end local v7    # "c":Landroid/database/Cursor;
    .local v14, "c":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v13, -0x1

    if-eqz v7, :cond_1fa

    .line 2059
    const-string v7, "account"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2060
    .local v7, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_11c

    .line 2061
    const-string v8, "account_type"

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11d

    :cond_11c
    move-object v8, v4

    .line 2062
    .local v8, "accountType":Ljava/lang/String;
    :goto_11d
    if-nez v8, :cond_121

    .line 2063
    const-string v8, "com.google"

    .line 2065
    :cond_121
    const-string v9, "authority"

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2066
    .local v9, "authorityName":Ljava/lang/String;
    new-instance v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v11, Landroid/accounts/Account;

    invoke-direct {v11, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v11, v9, v15}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2067
    invoke-direct {v1, v10, v13, v15}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 2073
    .local v10, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_1f4

    .line 2074
    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 2075
    .local v11, "i":I
    const/4 v12, 0x0

    .line 2076
    .local v12, "found":Z
    move v13, v11

    move-object v11, v4

    .line 2077
    .local v11, "st":Landroid/content/SyncStatusInfo;
    .local v13, "i":I
    :goto_144
    if-lez v13, :cond_15c

    .line 2078
    add-int/lit8 v13, v13, -0x1

    .line 2079
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/content/SyncStatusInfo;

    .line 2080
    iget v4, v11, Landroid/content/SyncStatusInfo;->authorityId:I

    iget v6, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v4, v6, :cond_159

    .line 2081
    const/4 v12, 0x1

    .line 2082
    goto :goto_15c

    .line 2076
    :cond_159
    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_144

    .line 2085
    :cond_15c
    :goto_15c
    if-nez v12, :cond_16d

    .line 2086
    new-instance v4, Landroid/content/SyncStatusInfo;

    iget v6, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {v4, v6}, Landroid/content/SyncStatusInfo;-><init>(I)V

    move-object v11, v4

    .line 2087
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v4, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2089
    :cond_16d
    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "totalElapsedTime"

    move-object/from16 v19, v7

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    .line 2089
    .end local v7    # "accountName":Ljava/lang/String;
    .local v19, "accountName":Ljava/lang/String;
    iput-wide v6, v4, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2090
    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSyncs"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2091
    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSourceLocal"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2092
    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSourcePoll"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2093
    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSourceServer"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2094
    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSourceUser"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2095
    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iput v15, v4, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2096
    const-string/jumbo v4, "lastSuccessSource"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    iput v4, v11, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 2097
    const-string/jumbo v4, "lastSuccessTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v11, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 2098
    const-string/jumbo v4, "lastFailureSource"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    iput v4, v11, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 2099
    const-string/jumbo v4, "lastFailureTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v11, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 2100
    const-string/jumbo v4, "lastFailureMesg"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 2101
    const-string/jumbo v4, "pending"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1f1

    const/4 v4, 0x1

    goto :goto_1f2

    :cond_1f1
    move v4, v15

    :goto_1f2
    iput-boolean v4, v11, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2103
    .end local v8    # "accountType":Ljava/lang/String;
    .end local v9    # "authorityName":Ljava/lang/String;
    .end local v10    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "st":Landroid/content/SyncStatusInfo;
    .end local v12    # "found":Z
    .end local v13    # "i":I
    .end local v19    # "accountName":Ljava/lang/String;
    :cond_1f4
    nop

    .line 2057
    move-object v7, v14

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_fd

    .line 2105
    :cond_1fa
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2108
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2109
    .end local v16    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v4, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v6, "settings"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2110
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object v7, v4

    move-object v8, v5

    move v15, v13

    move-object v13, v6

    move-object v6, v14

    move-object/from16 v14, v16

    .line 2110
    .end local v14    # "c":Landroid/database/Cursor;
    .local v6, "c":Landroid/database/Cursor;
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2111
    :goto_21a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_29f

    .line 2112
    const-string/jumbo v7, "name"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2113
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v8, "value"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2114
    .local v8, "value":Ljava/lang/String;
    if-nez v7, :cond_239

    .line 2114
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_21a

    .line 2115
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_239
    const-string/jumbo v9, "listen_for_tickles"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_253

    .line 2116
    if-eqz v8, :cond_24d

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24b

    goto :goto_24d

    :cond_24b
    const/4 v9, 0x0

    goto :goto_24e

    :cond_24d
    :goto_24d
    const/4 v9, 0x1

    :goto_24e
    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v10, v15}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIII)V

    goto :goto_29c

    .line 2118
    :cond_253
    const/4 v10, 0x0

    const-string/jumbo v9, "sync_provider_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29c

    .line 2119
    const-string/jumbo v9, "sync_provider_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 2120
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    .line 2119
    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2121
    .local v9, "provider":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 2122
    .local v11, "i":I
    :goto_272
    if-lez v11, :cond_29c

    .line 2123
    add-int/lit8 v11, v11, -0x1

    .line 2124
    iget-object v12, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2125
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v13, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29a

    .line 2126
    if-eqz v8, :cond_293

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_291

    goto :goto_293

    :cond_291
    move v13, v10

    goto :goto_294

    :cond_293
    :goto_293
    const/4 v13, 0x1

    :goto_294
    iput-boolean v13, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 2127
    const/4 v13, 0x1

    iput v13, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 2127
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_29b

    .line 2129
    :cond_29a
    const/4 v13, 0x1

    :goto_29b
    goto :goto_272

    .line 2131
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "provider":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_29c
    :goto_29c
    const/4 v13, 0x1

    goto/16 :goto_21a

    .line 2133
    :cond_29f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2135
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2137
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2139
    .end local v0    # "hasType":Z
    .end local v4    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v18    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2ad
    return-void
.end method

.method private readStatisticsLocked()V
    .registers 9

    .line 2254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2255
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2256
    .local v1, "in":Landroid/os/Parcel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2257
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2259
    nop

    .local v3, "index":I
    :goto_13
    move v2, v3

    .line 2260
    .end local v3    # "index":I
    .local v2, "index":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v4, v3

    .local v4, "token":I
    if-eqz v3, :cond_6f

    .line 2261
    const/16 v3, 0x65

    const/16 v5, 0x64

    if-eq v4, v3, :cond_3b

    if-ne v4, v5, :cond_24

    goto :goto_3b

    .line 2278
    :cond_24
    const-string v3, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown stats token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    goto :goto_6f

    .line 2263
    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2264
    .local v3, "day":I
    if-ne v4, v5, :cond_45

    .line 2265
    add-int/lit16 v5, v3, -0x7d9

    add-int/lit16 v3, v5, 0x37a5

    .line 2267
    :cond_45
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v5, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2268
    .local v5, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2269
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2271
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2272
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v6, v6

    if-ge v2, v6, :cond_6d

    .line 2273
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v5, v6, v2
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6b} :catch_70

    .line 2274
    add-int/lit8 v2, v2, 0x1

    .line 2276
    .end local v2    # "index":I
    .end local v5    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .local v3, "index":I
    :cond_6d
    move v3, v2

    goto :goto_13

    .line 2284
    .end local v0    # "data":[B
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v3    # "index":I
    .end local v4    # "token":I
    :cond_6f
    :goto_6f
    goto :goto_78

    .line 2282
    :catch_70
    move-exception v0

    .line 2283
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "No initial statistics"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    .end local v0    # "e":Ljava/io/IOException;
    :goto_78
    return-void
.end method

.method private readStatusLocked()V
    .registers 10

    .line 2148
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2149
    const-string v0, "SyncManagerFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2153
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2154
    .local v2, "in":Landroid/os/Parcel;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2155
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2157
    :goto_37
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v5, v3

    .local v5, "token":I
    if-eqz v3, :cond_92

    .line 2158
    const/16 v3, 0x64

    if-ne v5, v3, :cond_7b

    .line 2159
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2160
    .local v3, "status":Landroid/content/SyncStatusInfo;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_7a

    .line 2161
    iput-boolean v4, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2162
    const-string v6, "SyncManagerFile"

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 2163
    const-string v6, "SyncManagerFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding status for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_73
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2167
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    :cond_7a
    goto :goto_37

    .line 2169
    :cond_7b
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown status token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_91} :catch_93

    .line 2170
    nop

    .line 2175
    .end local v0    # "data":[B
    .end local v2    # "in":Landroid/os/Parcel;
    .end local v5    # "token":I
    :cond_92
    goto :goto_9b

    .line 2173
    :catch_93
    move-exception v0

    .line 2174
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "No initial status"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9b
    return-void
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    .line 1534
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1535
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_30

    .line 1536
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1537
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_30

    .line 1538
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v2, :cond_24

    .line 1539
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v2, v3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1541
    :cond_24
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1542
    if-eqz p4, :cond_30

    .line 1543
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1547
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_30
    return-void
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "syncExemptionFlag"    # I

    .line 2235
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_17

    .line 2237
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-interface {v0, v1, p3, p5, p6}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;I)V

    goto :goto_1a

    .line 2241
    :cond_17
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2243
    :goto_1a
    return-void
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;I)V
    .registers 8
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "syncExemptionFlag"    # I

    .line 2215
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_14

    .line 2217
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;I)V

    goto :goto_33

    .line 2220
    :cond_14
    new-instance v0, Landroid/content/SyncRequest$Builder;

    invoke-direct {v0}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 2222
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2223
    invoke-virtual {v0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2224
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2225
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    .line 2227
    .end local v0    # "req":Landroid/content/SyncRequest$Builder;
    :goto_33
    return-void
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "nextSyncTime"    # J
    .param p6, "nextDelay"    # J

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 845
    .local v2, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_2a

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v3, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v3, v3, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v3, :cond_2a

    .line 847
    goto :goto_b

    .line 849
    :cond_2a
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 850
    .local v4, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_4d

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 851
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 852
    goto :goto_34

    .line 854
    :cond_4d
    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v5, p4

    if-nez v5, :cond_59

    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v5, p6

    if-eqz v5, :cond_5e

    .line 856
    :cond_59
    iput-wide p4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 857
    iput-wide p6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 858
    const/4 v0, 0x1

    .line 860
    .end local v4    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_5e
    goto :goto_34

    .line 861
    .end local v2    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_5f
    goto :goto_b

    .line 862
    :cond_60
    return v0
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;II)V
    .registers 12
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I
    .param p3, "callingUid"    # I

    .line 759
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Set syncable "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v4, " value="

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    const-string v4, " callingUid="

    const/4 v6, 0x4

    aput-object v4, v1, v6

    .line 760
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v1, v6

    .line 759
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 762
    const/4 v1, -0x1

    :try_start_2c
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 763
    .local v4, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-ge p2, v1, :cond_33

    .line 764
    const/4 p2, -0x1

    .line 766
    :cond_33
    const-string v1, "SyncManager"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 767
    const-string v1, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setIsSyncable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_5e
    iget v1, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v1, p2, :cond_88

    .line 770
    const-string v1, "SyncManager"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 771
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSyncable: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_86
    monitor-exit v0

    return-void

    .line 775
    :cond_88
    iput p2, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 776
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 777
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_2c .. :try_end_8e} :catchall_9e

    move-object v0, v4

    .line 778
    .end local v4    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v0, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-ne p2, v2, :cond_9a

    .line 779
    const/4 v1, -0x5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;I)V

    .line 782
    :cond_9a
    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 783
    return-void

    .line 777
    .end local v0    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_9e
    move-exception v1

    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method private writeAccountInfoLocked()V
    .registers 11

    .line 1948
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1949
    const-string v0, "SyncManagerFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_25
    const/4 v0, 0x0

    move-object v1, v0

    .line 1954
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_27
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 1955
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1956
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1957
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1958
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1960
    const-string v3, "accounts"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1961
    const-string/jumbo v3, "version"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1962
    const-string/jumbo v3, "nextAuthorityId"

    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1963
    const-string/jumbo v3, "offsetInSeconds"

    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1966
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1967
    .local v3, "M":I
    const/4 v4, 0x0

    move v5, v4

    .line 1967
    .local v5, "m":I
    :goto_7a
    if-ge v5, v3, :cond_b0

    .line 1968
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1969
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 1970
    .local v7, "listen":Ljava/lang/Boolean;
    const-string/jumbo v8, "listenForTickles"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1971
    const-string/jumbo v8, "user"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1972
    const-string v8, "enabled"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1973
    const-string/jumbo v8, "listenForTickles"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1967
    .end local v6    # "userId":I
    .end local v7    # "listen":Ljava/lang/Boolean;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 1976
    .end local v5    # "m":I
    :cond_b0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1977
    .local v5, "N":I
    nop

    .line 1977
    .local v4, "i":I
    :goto_b7
    if-ge v4, v5, :cond_119

    .line 1978
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1979
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1980
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string v8, "authority"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1981
    const-string/jumbo v8, "id"

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1982
    const-string/jumbo v8, "user"

    iget v9, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1983
    const-string v8, "enabled"

    iget-boolean v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1984
    const-string v8, "account"

    iget-object v9, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1985
    const-string/jumbo v8, "type"

    iget-object v9, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1986
    const-string v8, "authority"

    iget-object v9, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1987
    const-string/jumbo v8, "syncable"

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1988
    const-string v8, "authority"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1977
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 1990
    .end local v4    # "i":I
    :cond_119
    const-string v4, "accounts"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1991
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1992
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_126} :catch_127

    .line 1998
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "M":I
    .end local v5    # "N":I
    goto :goto_136

    .line 1993
    :catch_127
    move-exception v0

    .line 1994
    .local v0, "e1":Ljava/io/IOException;
    const-string v2, "SyncManager"

    const-string v3, "Error writing accounts"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1995
    if-eqz v1, :cond_136

    .line 1996
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1999
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_136
    :goto_136
    return-void
.end method

.method private writeStatisticsLocked()V
    .registers 9

    .line 2291
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2292
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_25
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2299
    const/4 v0, 0x0

    .line 2301
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 2302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2303
    .local v1, "out":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v2, v2

    .line 2304
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_3b
    if-ge v4, v2, :cond_65

    .line 2305
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v5, v5, v4

    .line 2306
    .local v5, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v5, :cond_44

    .line 2307
    goto :goto_65

    .line 2309
    :cond_44
    const/16 v6, 0x65

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2310
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2311
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2312
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2313
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2314
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2304
    .end local v5    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 2316
    .end local v4    # "i":I
    :cond_65
    :goto_65
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2320
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_77} :catch_78

    .line 2326
    .end local v1    # "out":Landroid/os/Parcel;
    .end local v2    # "N":I
    goto :goto_87

    .line 2321
    :catch_78
    move-exception v1

    .line 2322
    .local v1, "e1":Ljava/io/IOException;
    const-string v2, "SyncManager"

    const-string v3, "Error writing stats"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2323
    if-eqz v0, :cond_87

    .line 2324
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2327
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_87
    :goto_87
    return-void
.end method

.method private writeStatusLocked()V
    .registers 8

    .line 2182
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2183
    const-string v0, "SyncManagerFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_25
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2190
    const/4 v0, 0x0

    .line 2192
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 2193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2194
    .local v1, "out":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2195
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_3f
    if-ge v4, v2, :cond_54

    .line 2196
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2197
    .local v5, "status":Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    invoke-virtual {v5, v1, v3}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2195
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 2200
    .end local v4    # "i":I
    :cond_54
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2201
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_66} :catch_67

    .line 2210
    .end local v1    # "out":Landroid/os/Parcel;
    .end local v2    # "N":I
    goto :goto_76

    .line 2205
    :catch_67
    move-exception v1

    .line 2206
    .local v1, "e1":Ljava/io/IOException;
    const-string v2, "SyncManager"

    const-string v3, "Error writing status"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2207
    if-eqz v0, :cond_76

    .line 2208
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2211
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_76
    :goto_76
    return-void
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .registers 12
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1077
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1078
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1079
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_3f
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1085
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1089
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v9, Landroid/content/SyncInfo;

    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v7, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    move-object v3, v9

    .line 1094
    .local v3, "syncInfo":Landroid/content/SyncInfo;
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6c

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    .line 1097
    return-object v3

    .line 1095
    .end local v3    # "syncInfo":Landroid/content/SyncInfo;
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 588
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 589
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 590
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public clearAllBackoffsLocked()V
    .registers 13

    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 869
    :try_start_4
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 870
    .local v3, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 871
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3e

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_92

    .line 873
    :cond_3e
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 874
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " account:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v10, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " user:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v10, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " backoffTime was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " backoffDelay was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_8d
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 882
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 883
    const/4 v0, 0x1

    .line 885
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_92
    goto :goto_24

    .line 886
    .end local v3    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_93
    goto/16 :goto_e

    .line 887
    :cond_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_4 .. :try_end_96} :catchall_9d

    .line 889
    if-eqz v0, :cond_9c

    .line 890
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 892
    :cond_9c
    return-void

    .line 887
    :catchall_9d
    move-exception v2

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v2
.end method

.method public clearAndReadState()V
    .registers 3

    .line 1574
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1575
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1576
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1577
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1578
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1579
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1581
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1582
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 1583
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1584
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 1585
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1586
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1587
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1588
    monitor-exit v0

    .line 1589
    return-void

    .line 1588
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .registers 12
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    .line 1017
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1018
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1019
    const-string v1, "SyncManager"

    const-string v3, "Updating for new accounts..."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_13
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1022
    .local v1, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1023
    .local v3, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1024
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1025
    .local v4, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v5, p2, :cond_7d

    .line 1028
    const-string v5, "SyncManager"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1029
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_5e
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1032
    .local v6, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1033
    .end local v6    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_68

    .line 1034
    :cond_7a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1036
    .end local v4    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_7d
    goto :goto_22

    .line 1039
    :cond_7e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1040
    .local v2, "i":I
    if-lez v2, :cond_e7

    .line 1041
    :goto_84
    if-lez v2, :cond_de

    .line 1042
    add-int/lit8 v2, v2, -0x1

    .line 1043
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1044
    .local v4, "ident":I
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1045
    .local v5, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v6, :cond_9d

    .line 1046
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v6, v7}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1048
    :cond_9d
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1049
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1050
    .local v6, "j":I
    :cond_a8
    :goto_a8
    if-lez v6, :cond_c0

    .line 1051
    add-int/lit8 v6, v6, -0x1

    .line 1052
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    if-ne v7, v4, :cond_a8

    .line 1053
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a8

    .line 1056
    :cond_c0
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    .line 1057
    :cond_c7
    :goto_c7
    if-lez v6, :cond_dd

    .line 1058
    add-int/lit8 v6, v6, -0x1

    .line 1059
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v7, v4, :cond_c7

    .line 1060
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c7

    .line 1063
    .end local v4    # "ident":I
    .end local v5    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "j":I
    :cond_dd
    goto :goto_84

    .line 1064
    :cond_de
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1065
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1066
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1068
    .end local v1    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_e7
    monitor-exit v0

    .line 1069
    return-void

    .line 1068
    :catchall_e9
    move-exception v1

    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_3 .. :try_end_eb} :catchall_e9

    throw v1
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 4
    .param p1, "authorityId"    # I

    .line 977
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 978
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object v1

    .line 979
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getAuthorityCount()I
    .registers 3

    .line 971
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 972
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 973
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 787
    :try_start_3
    const-string v1, "getBackoff"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 788
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_1d

    .line 789
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 791
    :cond_1d
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 792
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1350
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1351
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1354
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1355
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "canAccessAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1321
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    .line 1322
    .local v1, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v2, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncInfo;

    .line 1325
    .local v4, "sync":Landroid/content/SyncInfo;
    if-nez p2, :cond_29

    .line 1326
    iget v5, v4, Landroid/content/SyncInfo;->authorityId:I

    iget-object v6, v4, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v7, v4, Landroid/content/SyncInfo;->startTime:J

    invoke-static {v5, v6, v7, v8}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v5

    .local v5, "copy":Landroid/content/SyncInfo;
    goto :goto_2e

    .line 1329
    .end local v5    # "copy":Landroid/content/SyncInfo;
    :cond_29
    new-instance v5, Landroid/content/SyncInfo;

    invoke-direct {v5, v4}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    .line 1331
    .restart local v5    # "copy":Landroid/content/SyncInfo;
    :goto_2e
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    .end local v4    # "sync":Landroid/content/SyncInfo;
    .end local v5    # "copy":Landroid/content/SyncInfo;
    goto :goto_10

    .line 1333
    :cond_32
    monitor-exit v0

    return-object v2

    .line 1334
    .end local v1    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v2    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 6

    .line 1425
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1426
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1427
    .local v1, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1428
    monitor-exit v0

    return-object v1

    .line 1429
    .end local v1    # "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .registers 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 895
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 896
    :try_start_3
    const-string v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 897
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_f

    .line 898
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 900
    :cond_f
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0

    return-wide v2

    .line 901
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 722
    const/4 v1, -0x1

    if-eqz p1, :cond_1b

    .line 723
    :try_start_6
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v3, "get authority syncable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 726
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_15

    .line 727
    monitor-exit v0

    return v1

    .line 729
    :cond_15
    iget v1, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    .line 742
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_19
    move-exception v1

    goto :goto_42

    .line 732
    :cond_1b
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 733
    .local v2, "i":I
    :goto_21
    if-lez v2, :cond_40

    .line 734
    add-int/lit8 v2, v2, -0x1

    .line 735
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 736
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 737
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 738
    iget v1, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    .line 740
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3f
    goto :goto_21

    .line 741
    :cond_40
    monitor-exit v0

    return v1

    .line 742
    .end local v2    # "i":I
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_19

    throw v1
.end method

.method public getMasterSyncAutomatically(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 964
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 965
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 966
    .local v1, "auto":Ljava/lang/Boolean;
    if-nez v1, :cond_10

    iget-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    goto :goto_14

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_14
    monitor-exit v0

    return v2

    .line 967
    .end local v1    # "auto":Ljava/lang/Boolean;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1365
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_3c

    .line 1368
    :cond_a
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1369
    :try_start_d
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1370
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_37

    .line 1371
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1372
    .local v4, "cur":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1373
    .local v5, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v5, :cond_34

    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1374
    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1375
    monitor-exit v0

    return-object v4

    .line 1370
    .end local v4    # "cur":Landroid/content/SyncStatusInfo;
    .end local v5    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1378
    .end local v3    # "i":I
    :cond_37
    monitor-exit v0

    return-object v1

    .line 1379
    .end local v2    # "N":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_39

    throw v1

    .line 1366
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 658
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1e

    .line 659
    :try_start_7
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v4, "getSyncAutomatically"

    invoke-direct {p0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 662
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v3, :cond_1a

    iget-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v4, :cond_1a

    move v1, v2

    nop

    :cond_1a
    monitor-exit v0

    return v1

    .line 675
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_1c
    move-exception v1

    goto :goto_46

    .line 665
    :cond_1e
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 666
    .local v3, "i":I
    :goto_24
    if-lez v3, :cond_44

    .line 667
    add-int/lit8 v3, v3, -0x1

    .line 668
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 669
    .local v4, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_43

    iget-boolean v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_43

    .line 671
    monitor-exit v0

    return v2

    .line 673
    .end local v4    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_43
    goto :goto_24

    .line 674
    :cond_44
    monitor-exit v0

    return v1

    .line 675
    .end local v3    # "i":I
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_1c

    throw v1
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1410
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1411
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1412
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1f

    .line 1413
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1415
    .end local v3    # "i":I
    :cond_1f
    monitor-exit v0

    return-object v2

    .line 1416
    .end local v1    # "N":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getSyncRandomOffset()I
    .registers 2

    .line 584
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .registers 12
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    .line 1128
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1129
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1130
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertStartSyncEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_23
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v3, "insertStartSyncEvent"

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1133
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_32

    .line 1134
    const-wide/16 v2, -0x1

    monitor-exit v0

    return-wide v2

    .line 1136
    :cond_32
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1137
    .local v3, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1138
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1139
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1140
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    const/4 v5, 0x0

    if-gez v4, :cond_50

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1141
    :cond_50
    iput-wide p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1142
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1143
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1144
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iput-object v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1145
    iput v5, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1146
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1147
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1148
    :goto_69
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_81

    .line 1149
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 1151
    :cond_81
    iget v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v4, v4

    .line 1152
    .local v4, "id":J
    const-string v6, "SyncManager"

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a3

    const-string v2, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_3 .. :try_end_a4} :catchall_ab

    move-wide v0, v4

    .line 1155
    .end local v4    # "id":J
    .local v0, "id":J
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1156
    return-wide v0

    .line 1153
    .end local v0    # "id":J
    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public isClockValid()Z
    .registers 2

    .line 2345
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    return v0
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 987
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 988
    :try_start_3
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 989
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 990
    .local v3, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v3, :cond_2c

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 991
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 993
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    .end local v3    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2c
    goto :goto_d

    .line 994
    :cond_2d
    monitor-exit v0

    .line 995
    const/4 v0, 0x0

    return v0

    .line 994
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1384
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1385
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1386
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_35

    .line 1387
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1388
    .local v4, "cur":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1389
    .local v5, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v5, :cond_22

    .line 1390
    goto :goto_32

    .line 1392
    :cond_22
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 1393
    goto :goto_32

    .line 1395
    :cond_2b
    iget-boolean v6, v4, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v6, :cond_32

    .line 1396
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1386
    .end local v4    # "cur":Landroid/content/SyncStatusInfo;
    .end local v5    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1399
    .end local v3    # "i":I
    :cond_35
    monitor-exit v0

    return v2

    .line 1400
    .end local v1    # "N":I
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .registers 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pendingValue"    # Z

    .line 999
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1000
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1003
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_d

    .line 1004
    monitor-exit v0

    return-void

    .line 1006
    :cond_d
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 1007
    .local v2, "status":Landroid/content/SyncStatusInfo;
    iput-boolean p2, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1008
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "status":Landroid/content/SyncStatusInfo;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1b

    .line 1009
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1010
    return-void

    .line 1008
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public queueBackup()V
    .registers 2

    .line 2334
    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 2335
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .registers 7
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    .line 1104
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1105
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1106
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_37
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1111
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_43

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    .line 1114
    return-void

    .line 1111
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1522
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1523
    :try_start_3
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1524
    monitor-exit v0

    .line 1525
    return-void

    .line 1524
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 594
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 595
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 596
    monitor-exit v0

    .line 597
    return-void

    .line 596
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public reportActiveChange()V
    .registers 2

    .line 1120
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1121
    return-void
.end method

.method reportChange(I)V
    .registers 7
    .param p1, "which"    # I

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 624
    :try_start_4
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 625
    .local v2, "i":I
    :goto_a
    if-lez v2, :cond_32

    .line 626
    add-int/lit8 v2, v2, -0x1

    .line 627
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 628
    .local v3, "mask":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_1e

    .line 629
    goto :goto_a

    .line 631
    :cond_1e
    if-nez v0, :cond_26

    .line 632
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 634
    :cond_26
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    .end local v3    # "mask":Ljava/lang/Integer;
    goto :goto_a

    .line 636
    :cond_32
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 637
    .end local v2    # "i":I
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_77

    .line 639
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 640
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_60
    if-eqz v0, :cond_76

    .line 644
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 645
    .local v1, "i":I
    :goto_66
    if-lez v1, :cond_76

    .line 646
    add-int/lit8 v1, v1, -0x1

    .line 648
    :try_start_6a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ISyncStatusObserver;

    invoke-interface {v2, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_74

    goto :goto_75

    .line 649
    :catch_74
    move-exception v2

    .line 651
    :goto_75
    goto :goto_66

    .line 654
    .end local v1    # "i":I
    :cond_76
    return-void

    .line 637
    :catchall_77
    move-exception v2

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v2
.end method

.method public resetTodayStats(Z)V
    .registers 7
    .param p1, "force"    # Z

    .line 2349
    if-eqz p1, :cond_9

    .line 2350
    const-string v0, "SyncManager"

    const-string v1, "Force resetting today stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_9
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2353
    :try_start_c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2354
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_27

    .line 2355
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2356
    .local v3, "cur":Landroid/content/SyncStatusInfo;
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 2354
    .end local v3    # "cur":Landroid/content/SyncStatusInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2358
    .end local v2    # "i":I
    :cond_27
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2359
    .end local v1    # "N":I
    monitor-exit v0

    .line 2360
    return-void

    .line 2359
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method restoreAllPeriodicSyncs()Z
    .registers 13

    .line 924
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 925
    return v1

    .line 927
    :cond_6
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 928
    nop

    .local v1, "i":I
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 929
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 930
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/PeriodicSync;

    .line 931
    .local v4, "periodicSync":Landroid/content/PeriodicSync;
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v4, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v8, v4, Landroid/content/PeriodicSync;->period:J

    iget-wide v10, v4, Landroid/content/PeriodicSync;->flexTime:J

    invoke-interface/range {v5 .. v11}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V

    .line 933
    .end local v4    # "periodicSync":Landroid/content/PeriodicSync;
    goto :goto_20

    .line 934
    :cond_3a
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 928
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 936
    .end local v1    # "i":I
    :cond_42
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 937
    monitor-exit v0

    .line 938
    const/4 v0, 0x1

    return v0

    .line 937
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .registers 22
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    .line 800
    move-wide/from16 v13, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 801
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> nextSyncTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nextDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_38
    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v15

    .line 806
    :try_start_3b
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v7, 0x1

    if-eqz v0, :cond_61

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_45

    goto :goto_61

    .line 815
    :cond_45
    const/4 v0, -0x1

    .line 816
    invoke-direct {v9, v10, v0, v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 817
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_5a

    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_5a

    .line 819
    const/4 v1, 0x0

    .line 823
    .local v1, "changed":Z
    move v0, v7

    move v7, v1

    goto :goto_70

    .line 821
    .end local v1    # "changed":Z
    :cond_5a
    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 822
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 823
    nop

    .line 823
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move v0, v7

    goto :goto_70

    .line 809
    :cond_61
    :goto_61
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v4, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v1, v9

    move-wide v5, v11

    move v0, v7

    move-wide v7, v13

    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result v1

    move v7, v1

    .line 823
    .local v7, "changed":Z
    :goto_70
    move v1, v7

    .line 826
    .end local v7    # "changed":Z
    .restart local v1    # "changed":Z
    monitor-exit v15
    :try_end_72
    .catchall {:try_start_3b .. :try_end_72} :catchall_78

    .line 827
    if-eqz v1, :cond_77

    .line 828
    invoke-virtual {v9, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 830
    :cond_77
    return-void

    .line 826
    .end local v1    # "changed":Z
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v15
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public setClockValid()V
    .registers 3

    .line 2338
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    if-nez v0, :cond_e

    .line 2339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 2340
    const-string v0, "SyncManager"

    const-string v1, "Clock is valid now."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :cond_e
    return-void
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .line 905
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 906
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDelayUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> delayUntil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_28
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 910
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_2d
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 911
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_39

    .line 912
    monitor-exit v0

    return-void

    .line 914
    :cond_39
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 915
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_40

    .line 916
    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 917
    return-void

    .line 915
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;II)V
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "syncable"    # I
    .param p5, "callingUid"    # I

    .line 747
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4, p5}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;II)V

    .line 749
    return-void
.end method

.method public setMasterSyncAutomatically(ZIII)V
    .registers 18
    .param p1, "flag"    # Z
    .param p2, "userId"    # I
    .param p3, "syncExemptionFlag"    # I
    .param p4, "callingUid"    # I

    move-object v8, p0

    move v9, p2

    .line 943
    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Set master enabled="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v1, v10

    const-string v2, " user="

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 945
    iget-object v1, v8, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 946
    :try_start_3b
    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 947
    .local v0, "auto":Ljava/lang/Boolean;
    if-eqz v0, :cond_51

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 948
    monitor-exit v1

    return-void

    .line 950
    :cond_51
    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 951
    invoke-direct {v8}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 952
    .end local v0    # "auto":Ljava/lang/Boolean;
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_7d

    .line 953
    if-eqz p1, :cond_6f

    .line 954
    const/4 v2, 0x0

    const/4 v4, -0x7

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, v8

    move v3, v9

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    .line 958
    :cond_6f
    invoke-virtual {v8, v10}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 959
    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 960
    invoke-virtual {v8}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 961
    return-void

    .line 952
    :catchall_7d
    move-exception v0

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v0
.end method

.method protected setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 553
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_6

    .line 554
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 556
    :cond_6
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 547
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_6

    .line 548
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 550
    :cond_6
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 559
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_6

    .line 560
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 562
    :cond_6
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZII)V
    .registers 21
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "sync"    # Z
    .param p5, "syncExemptionFlag"    # I
    .param p6, "callingUid"    # I

    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    .line 680
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 681
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically:  provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_38
    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Set sync auto account="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v13, 0x1

    aput-object v9, v2, v13

    const-string v3, " user="

    aput-object v3, v2, v1

    const/4 v3, 0x3

    .line 685
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, " authority="

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v11, v2, v3

    const/4 v3, 0x6

    const-string v5, " value="

    aput-object v5, v2, v3

    const/4 v3, 0x7

    .line 687
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, " callingUid="

    aput-object v5, v2, v3

    const/16 v3, 0x9

    .line 688
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 684
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 689
    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 690
    :try_start_79
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, v9, v11, v10}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 691
    const/4 v3, -0x1

    invoke-direct {v8, v0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 695
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v4, v12, :cond_ad

    .line 696
    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 697
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncAutomatically: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_ab
    monitor-exit v2

    return-void

    .line 704
    :cond_ad
    if-eqz v12, :cond_b5

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v4, v1, :cond_b5

    .line 705
    iput v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 707
    :cond_b5
    iput-boolean v12, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 708
    invoke-direct {v8}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 709
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_79 .. :try_end_bb} :catchall_d3

    .line 711
    if-eqz v12, :cond_cc

    .line 712
    const/4 v4, -0x6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object v5, v11

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    .line 716
    :cond_cc
    invoke-virtual {v8, v13}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 717
    invoke-virtual {v8}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 718
    return-void

    .line 709
    :catchall_d3
    move-exception v0

    :try_start_d4
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .registers 2

    .line 1567
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .registers 34
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 1161
    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1162
    :try_start_b
    const-string v0, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1163
    const-string v0, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopSyncEvent: historyId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_2b
    const/4 v0, 0x0

    .line 1166
    .local v0, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1167
    .local v9, "i":I
    :goto_32
    if-lez v9, :cond_49

    .line 1168
    add-int/lit8 v9, v9, -0x1

    .line 1169
    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object v0, v10

    .line 1170
    iget v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v10, v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_47

    .line 1171
    goto :goto_49

    .line 1173
    :cond_47
    const/4 v0, 0x0

    goto :goto_32

    .line 1176
    :cond_49
    :goto_49
    if-nez v0, :cond_64

    .line 1177
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopSyncEvent: no history for id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    monitor-exit v7

    return-void

    .line 1181
    :cond_64
    iput-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1182
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1183
    iput-object v6, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1184
    move-wide/from16 v11, p6

    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J
    :try_end_6f
    .catchall {:try_start_b .. :try_end_6f} :catchall_279

    .line 1185
    move-wide/from16 v13, p8

    :try_start_71
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1187
    iget v15, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-direct {v1, v15}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v15

    .line 1189
    .local v15, "status":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v15, v8, v10}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1191
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1192
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1193
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v2, v4

    iput-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1194
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    move/from16 v17, v9

    iget-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1194
    .end local v9    # "i":I
    .local v17, "i":I
    add-long/2addr v8, v4

    iput-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1195
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v2, :pswitch_data_280

    goto :goto_109

    .line 1217
    :pswitch_a9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1218
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_109

    .line 1213
    :pswitch_b9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1214
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1215
    goto :goto_109

    .line 1205
    :pswitch_c9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1206
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1207
    goto :goto_109

    .line 1201
    :pswitch_d9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1202
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1203
    goto :goto_109

    .line 1197
    :pswitch_e9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1198
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1199
    goto :goto_109

    .line 1209
    :pswitch_f9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1210
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1211
    nop

    .line 1222
    :goto_109
    const/4 v2, 0x0

    .line 1223
    .local v2, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v3

    .line 1224
    .local v3, "day":I
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-nez v8, :cond_120

    .line 1225
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v9, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v9, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    goto :goto_143

    .line 1226
    :cond_120
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v3, v8, :cond_147

    .line 1227
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v10, v10

    move/from16 v18, v2

    const/4 v2, 0x1

    sub-int/2addr v10, v2

    .line 1227
    .end local v2    # "writeStatisticsNow":Z
    .local v18, "writeStatisticsNow":Z
    const/4 v11, 0x0

    invoke-static {v8, v11, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1228
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v8, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v8, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v9, 0x0

    aput-object v8, v2, v9

    .line 1229
    const/4 v2, 0x1

    .line 1232
    :goto_143
    move/from16 v18, v2

    const/4 v8, 0x0

    goto :goto_14e

    .line 1230
    .end local v18    # "writeStatisticsNow":Z
    .restart local v2    # "writeStatisticsNow":Z
    :cond_147
    move/from16 v18, v2

    .line 1230
    .end local v2    # "writeStatisticsNow":Z
    .restart local v18    # "writeStatisticsNow":Z
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v8, 0x0

    aget-object v2, v2, v8

    .line 1232
    :goto_14e
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v2, v2, v8

    .line 1234
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long/2addr v8, v4

    .line 1235
    .local v8, "lastSyncTime":J
    const/4 v10, 0x0

    .line 1236
    .local v10, "writeStatusNow":Z
    const-string/jumbo v11, "success"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-wide/16 v19, 0x0

    if-eqz v11, :cond_17f

    .line 1238
    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v11, v11, v19

    if-eqz v11, :cond_16d

    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v11, v11, v19

    if-eqz v11, :cond_16e

    .line 1239
    :cond_16d
    const/4 v10, 0x1

    .line 1241
    :cond_16e
    iget v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v11, v8, v9}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1242
    iget v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1243
    iget-wide v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v11, v4

    iput-wide v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_1c4

    .line 1244
    :cond_17f
    const-string v11, "canceled"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b1

    .line 1245
    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v11, v11, v19

    if-nez v11, :cond_18e

    .line 1246
    const/4 v10, 0x1

    .line 1248
    :cond_18e
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1249
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1251
    iget v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v11, v8, v9, v6}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1253
    iget v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1254
    iget-wide v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v11, v4

    iput-wide v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_1c4

    .line 1257
    :cond_1b1
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1258
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1259
    const/4 v10, 0x1

    .line 1261
    :goto_1c4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    .local v11, "event":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    const-string v2, ""

    .line 1262
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .local v21, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Source="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move/from16 v22, v3

    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .end local v3    # "day":I
    .local v22, "day":I
    aget-object v2, v2, v3

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Elapsed="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-static {v11, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 1265
    const-string v2, " Reason="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    invoke-static {v2, v3}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eqz v2, :cond_227

    .line 1268
    const-string v2, " Exemption="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    packed-switch v2, :pswitch_data_290

    .line 1277
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    goto :goto_224

    .line 1274
    :pswitch_217
    const-string/jumbo v2, "top"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    goto :goto_227

    .line 1271
    :pswitch_21e
    const-string v2, "fg"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    goto :goto_227

    .line 1277
    :goto_224
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1281
    :cond_227
    :goto_227
    const-string v2, " Extras="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    invoke-static {v2, v11}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1284
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    .line 1286
    if-eqz v10, :cond_23e

    .line 1287
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    goto :goto_255

    .line 1288
    :cond_23e
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_255

    .line 1289
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v12, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v12, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1292
    :cond_255
    :goto_255
    if-eqz v18, :cond_25b

    .line 1293
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    goto :goto_272

    .line 1294
    :cond_25b
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_272

    .line 1295
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1298
    .end local v0    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v8    # "lastSyncTime":J
    .end local v10    # "writeStatusNow":Z
    .end local v11    # "event":Ljava/lang/StringBuilder;
    .end local v15    # "status":Landroid/content/SyncStatusInfo;
    .end local v17    # "i":I
    .end local v18    # "writeStatisticsNow":Z
    .end local v21    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v22    # "day":I
    :cond_272
    :goto_272
    monitor-exit v7
    :try_end_273
    .catchall {:try_start_71 .. :try_end_273} :catchall_27e

    .line 1300
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1301
    return-void

    .line 1298
    :catchall_279
    move-exception v0

    move-wide/from16 v13, p8

    :goto_27c
    :try_start_27c
    monitor-exit v7
    :try_end_27d
    .catchall {:try_start_27c .. :try_end_27d} :catchall_27e

    throw v0

    :catchall_27e
    move-exception v0

    goto :goto_27c

    :pswitch_data_280
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_e9
        :pswitch_d9
        :pswitch_c9
        :pswitch_b9
        :pswitch_a9
    .end packed-switch

    :pswitch_data_290
    .packed-switch 0x1
        :pswitch_21e
        :pswitch_217
    .end packed-switch
.end method

.method public writeAllState()V
    .registers 3

    .line 1559
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1561
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1562
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1563
    monitor-exit v0

    .line 1564
    return-void

    .line 1563
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
