.class public Lcom/android/server/am/Connor;
.super Ljava/lang/Object;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Connor$BingoStatistic;,
        Lcom/android/server/am/Connor$MDMStatistic;,
        Lcom/android/server/am/Connor$ModelInfo;,
        Lcom/android/server/am/Connor$RecordStatistic;,
        Lcom/android/server/am/Connor$Callbacks;
    }
.end annotation


# static fields
.field private static final AAB_BUCKET_PREDICT_PERIOD:I = 0x36ee80

.field private static final APPID:Ljava/lang/String; = "RHJ2VVOOTS"

.field private static final CATEGORY_MM:I = 0x1

.field private static final CATEGORY_NN:I = 0x2

.field private static final CONNOR_DB:Ljava/lang/String; = "connor.db"

.field private static final CONNOR_DB_VERSION:I = 0x2

.field private static final CONNOR_INF_MODEL_PROTO:Ljava/lang/String; = "/system/etc/mylmdb_lstm_inf.prototxt"

.field private static final CONNOR_INF_ROOT:Ljava/lang/String; = "/data/system/"

.field private static final CONNOR_LABEL:Ljava/lang/String; = "/data/system/Label.txt"

.field private static final CONNOR_MODEL_POSFIX:Ljava/lang/String; = ".caffemodel"

.field private static final CONNOR_PROP_DATA_ENTRY:Ljava/lang/String; = "persist.vendor.connor.data_entry"

.field private static final CONNOR_PROP_DATA_READY:Ljava/lang/String; = "persist.vendor.connor.data_ready"

.field private static final CONNOR_ROOT:Ljava/lang/String; = "/data/connor_training/"

.field private static final CONNOR_SOLVERSTATE_POSFIX:Ljava/lang/String; = ".solverstate"

.field private static final CONNOR_TARGET_LABEL:Ljava/lang/String; = "/data/connor_training/Label.txt"

.field private static final CONNOR_TARGET_TRAINING_MODEL_PROTO:Ljava/lang/String; = "/data/connor_training/lenet_lmdb.prototxt"

.field private static final CONNOR_TARGET_TRAINING_SOLVER_PROTO:Ljava/lang/String; = "/data/connor_training/lenet_solver.prototxt"

.field private static final CONNOR_TRAINING_MODEL_PROTO:Ljava/lang/String; = "/system/etc/mylmdb_lstm.prototxt"

.field private static final CONNOR_TRAINING_SOLVER_PROTO:Ljava/lang/String; = "/system/etc/mylmdb_lstm_solver_auto.prototxt"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ONEPLUS:Z

.field private static final DELAY_TO_CLOSE_DB:I = 0x1388

.field private static final MAX_PREDICT:I = 0x5

.field private static final MDM_STATISTIC_TAG:Ljava/lang/String; = "accuracy_statistic"

.field private static final MIN_TRAINING_ENTRY_COUNT:J = 0x2af8L

.field private static final MM_MODEL_VERSION:I = 0x1

.field private static final NN_MODEL_VERSION:I = 0x1

.field private static final NUM_FEATURE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Connor"

.field private static final TRAINING_MAX_TEMP:I = 0x9858

.field private static final TRAINING_POLL_INTERVAL:I = 0x493e0

.field private static final TRAINING_POLL_INTERVAL_QUICK:I = 0x1d4c0

.field private static mGoogleSetCount:I

.field private static mIsAlpha:Z

.field private static mIsBeta:Z


# instance fields
.field private mAccOfNN:I

.field private mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAvailCv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

.field private mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

.field private mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

.field private mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/Connor$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mClusterPredicts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurModel:Ljava/lang/String;

.field private mDbHelper:Lcom/android/server/am/ConnorDbHelper;

.field private mEnable:Z

.field private mIsDebugMode:Z

.field private mIsMMDataReady:Z

.field private mIsScreenOff:Z

.field private mLossOfNN:F

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mPredicts:[Ljava/lang/String;

.field private mPredicts2:[Ljava/lang/String;

.field private mPredictsNN:[Ljava/lang/String;

.field private mPredictsNN2:[Ljava/lang/String;

.field private mPrev:Ljava/lang/String;

.field private mPrevApps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/ConnorData;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueCv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mReportStatistic:Ljava/lang/Runnable;

.field private mRestoreMM:Ljava/lang/Runnable;

.field private mRunBucketPredict:Ljava/lang/Runnable;

.field private mRunIdleCloseDb:Ljava/lang/Runnable;

.field private mRunInsertDb:Ljava/lang/Runnable;

.field private mRunTrainingCheck:Ljava/lang/Runnable;

.field private mSPCount:J

.field private mSPHitMM3:J

.field private mSPHitMM5:J

.field private mSPHitNN3:J

.field private mSPHitNN5:J

.field private mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mUstManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/Connor;->DEBUG_ONEPLUS:Z

    .line 96
    const-string v0, "1"

    const-string/jumbo v1, "ro.build.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Connor;->mIsAlpha:Z

    .line 97
    const-string v0, "1"

    const-string/jumbo v1, "ro.build.beta"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Connor;->mIsBeta:Z

    .line 284
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    .line 101
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    .line 102
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mQueueCv:Ljava/util/LinkedList;

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    .line 112
    new-instance v2, Lcom/android/server/am/Connor$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$1;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mRunInsertDb:Ljava/lang/Runnable;

    .line 135
    new-instance v2, Lcom/android/server/am/Connor$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$2;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    .line 166
    new-instance v2, Lcom/android/server/am/Connor$3;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$3;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;

    .line 254
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    .line 255
    new-instance v2, Lcom/android/server/am/Connor$4;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$4;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    .line 275
    iput v1, p0, Lcom/android/server/am/Connor;->mAccOfNN:I

    .line 276
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/Connor;->mLossOfNN:F

    .line 278
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPCount:J

    .line 280
    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM5:J

    .line 281
    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM3:J

    .line 282
    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitNN5:J

    .line 283
    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitNN3:J

    .line 285
    iput-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    .line 286
    iput-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    .line 287
    iput-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    .line 288
    iput-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    .line 300
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    .line 301
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPredicts2:[Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    .line 307
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    .line 308
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN2:[Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    .line 314
    new-instance v0, Lcom/android/server/am/Connor$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$5;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    .line 839
    new-instance v0, Lcom/android/server/am/Connor$12;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$12;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mRestoreMM:Ljava/lang/Runnable;

    .line 341
    iput-object p1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 342
    return-void
.end method

.method private String2BucketInt(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1011
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_b

    return v1

    .line 1012
    :cond_b
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x14

    return v0

    .line 1013
    :cond_16
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x1e

    return v0

    .line 1014
    :cond_21
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x28

    return v0

    .line 1015
    :cond_2c
    const-string v0, "Connor"

    const-string/jumbo v2, "return active since name pattern not match"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return v1
.end method

.method static synthetic access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/Connor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorDbHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/Connor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/Connor;->resetModelCheck()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/Connor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/Connor;->triggerTraining()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/Connor;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/am/Connor;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .param p1, "x1"    # Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/am/Connor;)Landroid/app/usage/UsageStatsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mUstManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/Connor;Landroid/app/usage/UsageStatsManager;)Landroid/app/usage/UsageStatsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .param p1, "x1"    # Landroid/app/usage/UsageStatsManager;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/Connor;->mUstManager:Landroid/app/usage/UsageStatsManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/Connor;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->String2BucketInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/Connor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .param p1, "x1"    # Z

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->setScreen(Z)V

    return-void
.end method

.method static synthetic access$1700()Z
    .registers 1

    .line 62
    sget-boolean v0, Lcom/android/server/am/Connor;->mIsAlpha:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .registers 1

    .line 62
    sget-boolean v0, Lcom/android/server/am/Connor;->mIsBeta:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/Connor;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mQueueCv:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/Connor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/Connor;->applyNNModel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/Connor;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/am/Connor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/am/Connor;Lcom/android/server/am/Connor$BingoStatistic;)Lcom/android/server/am/Connor$BingoStatistic;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .param p1, "x1"    # Lcom/android/server/am/Connor$BingoStatistic;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/server/am/Connor;Lcom/android/server/am/Connor$BingoStatistic;)Lcom/android/server/am/Connor$BingoStatistic;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;
    .param p1, "x1"    # Lcom/android/server/am/Connor$BingoStatistic;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/am/Connor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPCount:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/Connor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget v0, p0, Lcom/android/server/am/Connor;->mAccOfNN:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/Connor;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget v0, p0, Lcom/android/server/am/Connor;->mLossOfNN:F

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/Connor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPHitMM3:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/Connor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPHitMM5:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/am/Connor;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/Connor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPHitNN3:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/Connor;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPHitNN5:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/Connor;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/Connor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/Connor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/Connor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsScreenOff:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/Connor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/Connor;

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/Connor;->isBatFullAndCharged()Z

    move-result v0

    return v0
.end method

.method private applyNNModel()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/connor_training/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/Connor$9;

    invoke-direct {v1, p0}, Lcom/android/server/am/Connor$9;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 548
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_145

    .line 550
    new-instance v1, Lcom/android/server/am/Connor$10;

    invoke-direct {v1, p0}, Lcom/android/server/am/Connor$10;-><init>(Lcom/android/server/am/Connor;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 555
    array-length v1, v0

    const/4 v2, 0x1

    if-lez v1, :cond_135

    .line 556
    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "newModel":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/Connor;->needReplaceModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_135

    .line 560
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/connor_training/Label.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v4, "label":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3b

    return-void

    .line 562
    :cond_3b
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/Label.txt"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v5, "sysLabel":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v2, [Ljava/nio/file/CopyOption;

    sget-object v9, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 566
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v6, "sysModel":Ljava/io/File;
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-array v9, v2, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v10, v9, v1

    invoke-static {v7, v8, v9}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 568
    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v1, :cond_a1

    const-string v1, "Connor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "replace "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_a1
    const-string v1, "/system/etc/mylmdb_lstm_inf.prototxt"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/data/system/Label.txt"

    const-string/jumbo v9, "inputdata"

    const-string/jumbo v10, "prob"

    invoke-static {v1, v7, v8, v9, v10}, Lcom/android/server/am/Connor;->nativeNNInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 572
    .local v1, "result":Z
    if-eqz v1, :cond_fa

    .line 574
    iget-object v7, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d8

    .line 575
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/system/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v7, "oldModel":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 579
    .end local v7    # "oldModel":Ljava/io/File;
    :cond_d8
    iput-object v3, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    .line 581
    iget-object v7, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v7

    .line 582
    .local v7, "newInfo":Lcom/android/server/am/Connor$ModelInfo;
    iget v8, v7, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iput v8, p0, Lcom/android/server/am/Connor;->mAccOfNN:I

    .line 583
    iget v8, v7, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iput v8, p0, Lcom/android/server/am/Connor;->mLossOfNN:F

    .line 585
    new-instance v8, Lcom/android/server/am/Connor$BingoStatistic;

    const/4 v9, 0x3

    const/4 v10, 0x2

    invoke-direct {v8, p0, v10, v9}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    iput-object v8, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    .line 586
    new-instance v8, Lcom/android/server/am/Connor$BingoStatistic;

    const/4 v9, 0x5

    invoke-direct {v8, p0, v10, v9}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    iput-object v8, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    .line 587
    .end local v7    # "newInfo":Lcom/android/server/am/Connor$ModelInfo;
    goto :goto_135

    .line 588
    :cond_fa
    const-string v2, "Connor"

    const-string/jumbo v7, "nativeNNInit fail, perform clean up"

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v2, "/data/system/"

    const-string v7, ".caffemodel"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    .line 591
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 592
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    .line 594
    const-string v2, "/data/connor_training/"

    const-string v7, ".caffemodel"

    const-string v8, ".solverstate"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    .line 595
    invoke-direct {p0}, Lcom/android/server/am/Connor;->copyPrototxtFiles()V

    .line 596
    const-string/jumbo v2, "persist.vendor.connor.data_ready"

    const-string v7, "0"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v2, "persist.vendor.connor.data_entry"

    const-string v7, "0"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void

    .line 602
    .end local v1    # "result":Z
    .end local v3    # "newModel":Ljava/lang/String;
    .end local v4    # "label":Ljava/io/File;
    .end local v5    # "sysLabel":Ljava/io/File;
    .end local v6    # "sysModel":Ljava/io/File;
    :cond_135
    :goto_135
    array-length v1, v0

    if-le v1, v2, :cond_145

    .line 604
    nop

    .line 604
    .local v2, "i":I
    :goto_139
    move v1, v2

    .line 604
    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_145

    .line 605
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 604
    add-int/lit8 v2, v1, 0x1

    .line 604
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_139

    .line 608
    .end local v2    # "i":I
    :cond_145
    return-void
.end method

.method private copyPrototxtFiles()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/mylmdb_lstm.prototxt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "modelProto":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/mylmdb_lstm_solver_auto.prototxt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "solverProto":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_4e

    .line 426
    :cond_1b
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/connor_training/lenet_lmdb.prototxt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v2, "dataModelProto":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v4, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 428
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/connor_training/lenet_solver.prototxt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v3, "dataSolverProto":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v5, v8

    invoke-static {v4, v6, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 430
    return-void

    .line 423
    .end local v2    # "dataModelProto":Ljava/io/File;
    .end local v3    # "dataSolverProto":Ljava/io/File;
    :cond_4e
    :goto_4e
    const-string v2, "Connor"

    const-string/jumbo v3, "one of protos missing from /system/etc!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method private getTrainingEntryCount()J
    .registers 8

    .line 433
    iget-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 434
    :cond_c
    const-wide/16 v0, 0x0

    .line 436
    .local v0, "result":J
    const-wide/16 v2, 0x1388

    :try_start_10
    iget-object v4, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "connor_history_table"

    const-string v6, "connor_is_home = 0 "

    invoke-static {v4, v5, v6}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2f

    move-wide v0, v4

    .line 439
    iget-object v4, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    iget-object v4, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    nop

    .line 442
    return-wide v0

    .line 439
    :catchall_2f
    move-exception v4

    iget-object v5, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    iget-object v5, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v4
.end method

.method private initNN()V
    .registers 8

    .line 505
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/Connor$8;

    invoke-direct {v1, p0}, Lcom/android/server/am/Connor$8;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 511
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_a1

    array-length v1, v0

    if-lez v1, :cond_a1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_a1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a1

    .line 512
    const-string v2, "/system/etc/mylmdb_lstm_inf.prototxt"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/Label.txt"

    const-string/jumbo v5, "inputdata"

    const-string/jumbo v6, "prob"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/am/Connor;->nativeNNInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 514
    .local v2, "result":Z
    if-eqz v2, :cond_64

    .line 515
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    .line 517
    iget-object v1, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v1

    .line 518
    .local v1, "info":Lcom/android/server/am/Connor$ModelInfo;
    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iput v3, p0, Lcom/android/server/am/Connor;->mAccOfNN:I

    .line 519
    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iput v3, p0, Lcom/android/server/am/Connor;->mLossOfNN:F

    .line 521
    new-instance v3, Lcom/android/server/am/Connor$BingoStatistic;

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5, v4}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    iput-object v3, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    .line 522
    new-instance v3, Lcom/android/server/am/Connor$BingoStatistic;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v5, v4}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    iput-object v3, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    .line 523
    .end local v1    # "info":Lcom/android/server/am/Connor$ModelInfo;
    goto :goto_a1

    .line 524
    :cond_64
    const-string v1, "Connor"

    const-string/jumbo v3, "nativeNNInit fail, perform clean up"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v1, "/data/system/"

    const-string v3, ".caffemodel"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    .line 527
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/Label.txt"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 529
    const-string v1, "/data/connor_training/"

    const-string v3, ".caffemodel"

    const-string v4, ".solverstate"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    .line 530
    invoke-direct {p0}, Lcom/android/server/am/Connor;->copyPrototxtFiles()V

    .line 531
    const-string/jumbo v1, "persist.vendor.connor.data_ready"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo v1, "persist.vendor.connor.data_entry"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a1} :catch_a2

    .line 538
    .end local v0    # "files":[Ljava/io/File;
    .end local v2    # "result":Z
    :cond_a1
    :goto_a1
    goto :goto_ae

    .line 535
    :catch_a2
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Connor"

    const-string/jumbo v2, "initNN error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ae
    return-void
.end method

.method private isBatFullAndCharged()Z
    .registers 6

    .line 637
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 640
    .local v1, "batteryStatus":Landroid/content/Intent;
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_26

    const-string/jumbo v2, "plugged"

    .line 642
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 640
    :goto_27
    return v2
.end method

.method private isBingoMM(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    return v2

    .line 745
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    array-length v3, v1

    move v4, v0

    move v0, v2

    .end local v0    # "i":I
    .local v4, "i":I
    :goto_c
    if-ge v0, v3, :cond_32

    aget-object v5, v1, v0

    .line 746
    .local v5, "app":Ljava/lang/String;
    if-eqz v5, :cond_2d

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 747
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->hit()V

    .line 748
    const/4 v0, 0x3

    if-ge v4, v0, :cond_26

    .line 749
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->hit()V

    goto :goto_2b

    .line 751
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    .line 753
    :goto_2b
    const/4 v0, 0x1

    return v0

    .line 755
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    .line 745
    .end local v5    # "app":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 757
    :cond_32
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    .line 758
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    .line 759
    return v2
.end method

.method private isBingoNN(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_45

    .line 766
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    array-length v3, v1

    move v4, v0

    move v0, v2

    .end local v0    # "i":I
    .local v4, "i":I
    :goto_14
    if-ge v0, v3, :cond_3a

    aget-object v5, v1, v0

    .line 767
    .local v5, "app":Ljava/lang/String;
    if-eqz v5, :cond_35

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 768
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->hit()V

    .line 769
    const/4 v0, 0x3

    if-ge v4, v0, :cond_2e

    .line 770
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->hit()V

    goto :goto_33

    .line 772
    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    .line 774
    :goto_33
    const/4 v0, 0x1

    return v0

    .line 776
    :cond_35
    add-int/lit8 v4, v4, 0x1

    .line 766
    .end local v5    # "app":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 778
    :cond_3a
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    .line 779
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    .line 780
    return v2

    .line 765
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_45
    :goto_45
    return v2
.end method

.method private isNNReadyOutput()Z
    .registers 4

    .line 646
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    .line 647
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 648
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    const/4 v1, 0x1

    nop

    .line 646
    :cond_27
    return v1
.end method

.method protected static native nativeCluster()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected static native nativeFeed(JLjava/lang/String;Z)V
.end method

.method protected static native nativeGetClusterAccu(I)[D
.end method

.method protected static native nativeGetSysTemp(I)I
.end method

.method protected static native nativeNNInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected static native nativeNNPredict([Ljava/lang/String;[J)[Ljava/lang/String;
.end method

.method protected static native nativePredict()[Ljava/lang/String;
.end method

.method protected static native nativeSetGoogleCluster([Ljava/lang/String;IJ)V
.end method

.method private needReplaceModel(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "currModel"    # Ljava/lang/String;
    .param p2, "newModel"    # Ljava/lang/String;

    .line 624
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 626
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v0

    .line 627
    .local v0, "currInfo":Lcom/android/server/am/Connor$ModelInfo;
    invoke-direct {p0, p2}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v2

    .line 629
    .local v2, "newInfo":Lcom/android/server/am/Connor$ModelInfo;
    iget v3, v2, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iget v4, v0, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    if-lt v3, v4, :cond_21

    iget v3, v2, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v4, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_21

    .line 630
    return v1

    .line 633
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method private notifyPredictUpdated()V
    .registers 4

    .line 822
    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 824
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/Connor;->getAggregateNext()[Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "predict":[Ljava/lang/String;
    if-nez v0, :cond_10

    return-void

    .line 827
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/Connor$11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/Connor$11;-><init>(Lcom/android/server/am/Connor;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method

.method private parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 611
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "tok":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 613
    .local v1, "acc":I
    const/4 v2, 0x0

    .line 614
    .local v2, "loss":F
    const/4 v3, 0x0

    .line 614
    .local v3, "i":I
    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_35

    .line 615
    const-string v4, "acc"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_32

    .line 616
    :cond_1f
    const-string/jumbo v4, "loss"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 614
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 618
    .end local v3    # "i":I
    :cond_35
    new-instance v3, Lcom/android/server/am/Connor$ModelInfo;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/am/Connor$ModelInfo;-><init>(Lcom/android/server/am/Connor;IF)V

    return-object v3
.end method

.method private varargs removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 446
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/Connor$7;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/Connor$7;-><init>(Lcom/android/server/am/Connor;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 454
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3f

    array-length v1, v0

    if-lez v1, :cond_3f

    .line 455
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_3f

    .line 456
    iget-boolean v2, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v2, :cond_37

    const-string v2, "Connor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[cleanup] remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_37
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 460
    .end local v1    # "i":I
    :cond_3f
    return-void
.end method

.method private resetModelCheck()V
    .registers 12

    .line 464
    const-string/jumbo v0, "persist.vendor.connor.data_ready"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    move v0, v2

    .line 465
    .local v0, "dataReady":Z
    const-string/jumbo v2, "persist.vendor.connor.data_entry"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 467
    .local v2, "currEntries":I
    if-nez v0, :cond_23

    .line 468
    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v1, :cond_22

    const-string v1, "Connor"

    const-string v3, "data is not ready"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_22
    return-void

    .line 474
    :cond_23
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/am/Connor;->getTrainingEntryCount()J

    move-result-wide v3

    .line 476
    .local v3, "dbEntries":J
    const-wide/16 v5, 0x3e8

    if-nez v2, :cond_4f

    .line 478
    const-string/jumbo v1, "persist.vendor.connor.data_entry"

    div-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v1, "Connor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "record entry to prop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_4f
    int-to-long v7, v2

    mul-long/2addr v7, v5

    sub-long v7, v3, v7

    const-wide/16 v9, 0x2af8

    cmp-long v7, v7, v9

    if-lez v7, :cond_80

    .line 485
    const-string/jumbo v7, "persist.vendor.connor.data_ready"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, v1}, Lcom/android/server/am/Connor;->setTraining(Z)V

    .line 489
    invoke-direct {p0}, Lcom/android/server/am/Connor;->applyNNModel()V

    .line 491
    const-string v1, "/data/connor_training/"

    const-string v7, ".caffemodel"

    const-string v8, ".solverstate"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    .line 493
    const-string/jumbo v1, "persist.vendor.connor.data_entry"

    div-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_80} :catch_81

    .line 499
    .end local v3    # "dbEntries":J
    :cond_80
    goto :goto_8d

    .line 496
    :catch_81
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Connor"

    const-string/jumbo v4, "reset model failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8d
    return-void
.end method

.method public static setGoogleCluster([Ljava/lang/String;IJ)V
    .registers 5
    .param p0, "cluster"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "timestamp"    # J

    .line 904
    sget v0, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    .line 905
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/Connor;->nativeSetGoogleCluster([Ljava/lang/String;IJ)V

    .line 906
    return-void
.end method

.method private setScreen(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 411
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/Connor;->mIsScreenOff:Z

    .line 412
    return-void
.end method

.method private triggerTraining()V
    .registers 5

    .line 415
    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 416
    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v2, :cond_17

    const-wide/32 v2, 0x1d4c0

    goto :goto_1a

    :cond_17
    const-wide/32 v2, 0x493e0

    :goto_1a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    return-void
.end method


# virtual methods
.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 935
    monitor-enter p0

    .line 936
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    .line 937
    .local v0, "predicts":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    .line 938
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_259

    .line 939
    sget-boolean v2, Lcom/android/server/am/Connor;->DEBUG_ONEPLUS:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_b9

    array-length v2, p2

    if-le v2, v4, :cond_b9

    .line 940
    const-string v2, "debug"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    array-length v2, p2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_48

    .line 941
    const-string/jumbo v2, "on"

    const/4 v5, 0x2

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 942
    iput-boolean v4, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    .line 943
    const-string v2, "Connor"

    const-string v3, "enable quick verification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 944
    :cond_33
    const-string/jumbo v2, "off"

    aget-object v4, p2, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 945
    iput-boolean v3, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    .line 946
    const-string v2, "Connor"

    const-string v3, "disable quick verification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_47
    :goto_47
    return-void

    .line 949
    :cond_48
    const-string/jumbo v2, "trigger"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 950
    const-string v2, "Connor"

    const-string/jumbo v3, "trigger training by dumpsys"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0}, Lcom/android/server/am/Connor;->triggerTraining()V

    .line 952
    return-void

    .line 953
    :cond_5f
    const-string/jumbo v2, "replicate"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 954
    invoke-virtual {p0}, Lcom/android/server/am/Connor;->replicateData()V

    .line 955
    const-string v2, "Connor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replicate data done, count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/Connor;->getTrainingEntryCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void

    .line 957
    :cond_89
    const-string v2, "apply_model"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 959
    :try_start_93
    invoke-direct {p0}, Lcom/android/server/am/Connor;->applyNNModel()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    .line 963
    goto :goto_a3

    .line 960
    :catch_97
    move-exception v2

    .line 961
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Connor"

    const-string/jumbo v4, "got exception when apply_model"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 964
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_a3
    return-void

    .line 965
    :cond_a4
    const-string/jumbo v2, "report"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 966
    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 967
    return-void

    .line 971
    :cond_b9
    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_bc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 972
    iget-object v5, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v5, :cond_cc

    iget-object v5, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v5}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v5

    goto :goto_cd

    :cond_cc
    move v5, v6

    .line 973
    .local v5, "hitRateOfMM5":F
    :goto_cd
    iget-object v7, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    if-eqz v7, :cond_d8

    iget-object v7, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v7}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v7

    goto :goto_d9

    :cond_d8
    move v7, v6

    .line 974
    .local v7, "hitRateOfMM3":F
    :goto_d9
    iget-object v8, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    if-eqz v8, :cond_e4

    iget-object v8, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v8}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v8

    goto :goto_e5

    :cond_e4
    move v8, v6

    .line 975
    .local v8, "hitRateOfNN5":F
    :goto_e5
    iget-object v9, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    if-eqz v9, :cond_f0

    iget-object v6, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v6}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v6

    nop

    .line 977
    .local v6, "hitRateOfNN3":F
    :cond_f0
    iget-boolean v9, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v9, :cond_10a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current Model: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    :cond_10a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MM_5 hit rate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    cmpl-float v11, v5, v10

    if-ltz v11, :cond_11e

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_120

    :cond_11e
    const-string v11, " N/A "

    :goto_120
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MM_3 hit rate: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v11, v7, v10

    if-ltz v11, :cond_13d

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_13f

    :cond_13d
    const-string v11, " N/A "

    :goto_13f
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NN_5 hit rate: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v11, v8, v10

    if-ltz v11, :cond_15c

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_15e

    :cond_15c
    const-string v11, " N/A "

    :goto_15e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NN_3 hit rate: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_17b

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_17d

    :cond_17b
    const-string v10, " N/A "

    :goto_17d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_187
    .catchall {:try_start_bc .. :try_end_187} :catchall_253

    .line 983
    :try_start_187
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OP hit rate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/Connor;->nativeGetClusterAccu(I)[D

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Google hit rate: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/Connor;->nativeGetClusterAccu(I)[D

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google set count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1d5} :catch_1d6
    .catchall {:try_start_187 .. :try_end_1d5} :catchall_253

    .line 987
    goto :goto_1d7

    .line 986
    :catch_1d6
    move-exception v3

    .line 988
    :goto_1d7
    :try_start_1d7
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    const-string v3, "MM prediction: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 990
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 991
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    const-string v3, "NN prediction: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 993
    iget-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 994
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    const-string v3, "Aggregate prediction: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 996
    invoke-virtual {p0}, Lcom/android/server/am/Connor;->getAggregateNext()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 997
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    const-string v3, "AAB prediction:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_227
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1001
    .local v4, "k":Ljava/lang/String;
    const-string v9, "bucket"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1002
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1003
    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1004
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    .end local v4    # "k":Ljava/lang/String;
    goto :goto_227

    .line 1006
    .end local v5    # "hitRateOfMM5":F
    .end local v6    # "hitRateOfNN3":F
    .end local v7    # "hitRateOfMM3":F
    .end local v8    # "hitRateOfNN5":F
    :cond_24e
    monitor-exit v2
    :try_end_24f
    .catchall {:try_start_1d7 .. :try_end_24f} :catchall_253

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1007
    return-void

    .line 1006
    :catchall_253
    move-exception v3

    :try_start_254
    monitor-exit v2
    :try_end_255
    .catchall {:try_start_254 .. :try_end_255} :catchall_253

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 938
    .end local v0    # "predicts":[Ljava/lang/String;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :catchall_259
    move-exception v0

    :try_start_25a
    monitor-exit p0
    :try_end_25b
    .catchall {:try_start_25a .. :try_end_25b} :catchall_259

    throw v0
.end method

.method public feed(Ljava/lang/String;Z)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHome"    # Z

    .line 675
    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mEnable:Z

    if-nez v0, :cond_5

    .line 677
    return-void

    .line 679
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    if-nez v0, :cond_a

    .line 681
    return-void

    .line 683
    :cond_a
    if-nez p1, :cond_d

    .line 685
    return-void

    .line 688
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 692
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 695
    .local v0, "current":J
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_29

    const-string v4, "com.android.systemui"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_29

    :cond_27
    move v4, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v4, v2

    .line 698
    .local v4, "isSpecial":Z
    :goto_2a
    monitor-enter p0

    .line 699
    :try_start_2b
    iget-object v5, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_39

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, "cv":Landroid/content/ContentValues;
    goto :goto_41

    .line 700
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_39
    iget-object v5, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 701
    .restart local v5    # "cv":Landroid/content/ContentValues;
    :goto_41
    const-string v6, "connor_package_name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v6, "connor_is_home"

    if-eqz v4, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    :goto_4c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string v2, "connor_ts"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 704
    iget-object v2, p0, Lcom/android/server/am/Connor;->mQueueCv:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 705
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_2b .. :try_end_62} :catchall_f0

    .line 706
    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/Connor;->mRunInsertDb:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 708
    if-nez v4, :cond_73

    .line 709
    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->isBingoMM(Ljava/lang/String;)Z

    .line 710
    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->isBingoNN(Ljava/lang/String;)Z

    .line 713
    :cond_73
    iput-object p1, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    .line 714
    monitor-enter p0

    .line 715
    :try_start_76
    invoke-static {v0, v1, p1, v4}, Lcom/android/server/am/Connor;->nativeFeed(JLjava/lang/String;Z)V

    .line 716
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/Connor;->mPredicts2:[Ljava/lang/String;

    .line 717
    invoke-static {}, Lcom/android/server/am/Connor;->nativePredict()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    .line 718
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_76 .. :try_end_84} :catchall_ed

    .line 721
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_96

    .line 722
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnorData;

    .local v2, "data":Lcom/android/server/am/ConnorData;
    goto :goto_9b

    .line 723
    .end local v2    # "data":Lcom/android/server/am/ConnorData;
    :cond_96
    new-instance v2, Lcom/android/server/am/ConnorData;

    invoke-direct {v2}, Lcom/android/server/am/ConnorData;-><init>()V

    .line 725
    .restart local v2    # "data":Lcom/android/server/am/ConnorData;
    :goto_9b
    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/am/ConnorData;->setData(Ljava/lang/String;J)V

    .line 726
    iget-object v7, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 728
    iget-object v7, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ne v7, v6, :cond_e9

    iget-object v7, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e9

    .line 730
    new-array v7, v6, [Ljava/lang/String;

    .line 731
    .local v7, "prevApps":[Ljava/lang/String;
    new-array v6, v6, [J

    .line 732
    .local v6, "prevTs":[J
    nop

    .local v3, "i":I
    :goto_b8
    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v3, v8, :cond_df

    .line 733
    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnorData;

    iget-object v8, v8, Lcom/android/server/am/ConnorData;->mSbPackageName:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 734
    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnorData;

    iget-wide v8, v8, Lcom/android/server/am/ConnorData;->mTimeStamp:J

    aput-wide v8, v6, v3

    .line 732
    add-int/lit8 v3, v3, 0x1

    goto :goto_b8

    .line 736
    .end local v3    # "i":I
    :cond_df
    iget-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN2:[Ljava/lang/String;

    .line 737
    invoke-static {v7, v6}, Lcom/android/server/am/Connor;->nativeNNPredict([Ljava/lang/String;[J)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    .line 739
    .end local v6    # "prevTs":[J
    .end local v7    # "prevApps":[Ljava/lang/String;
    :cond_e9
    invoke-direct {p0}, Lcom/android/server/am/Connor;->notifyPredictUpdated()V

    .line 740
    return-void

    .line 718
    .end local v2    # "data":Lcom/android/server/am/ConnorData;
    :catchall_ed
    move-exception v2

    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v2

    .line 705
    .end local v5    # "cv":Landroid/content/ContentValues;
    :catchall_f0
    move-exception v2

    :try_start_f1
    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v2
.end method

.method public getAggregateNext()[Ljava/lang/String;
    .registers 5

    .line 657
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 659
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v0

    .line 660
    .local v0, "hitRateOfMM":F
    iget-object v1, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v1

    goto :goto_1a

    :cond_19
    move v1, v2

    .line 661
    .local v1, "hitRateOfNN5":F
    :goto_1a
    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2c

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2c

    .line 662
    cmpl-float v2, v0, v1

    if-lez v2, :cond_29

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    goto :goto_2b

    :cond_29
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    :goto_2b
    return-object v2

    .line 664
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/am/Connor;->isNNReadyOutput()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    goto :goto_37

    :cond_35
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    :goto_37
    return-object v2
.end method

.method public declared-synchronized getCluster()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 654
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/Connor;
    throw v0
.end method

.method public declared-synchronized getNext()[Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 651
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/Connor;
    throw v0
.end method

.method public declared-synchronized getNext2()[Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 669
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts2:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/Connor;
    throw v0
.end method

.method public getNextSnpe()[Ljava/lang/String;
    .registers 2

    .line 653
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    return-object v0
.end method

.method public getNextSnpe2()[Ljava/lang/String;
    .registers 2

    .line 671
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN2:[Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .registers 6

    .line 346
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "persist.vendor.connor.disable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    iput-boolean v1, p0, Lcom/android/server/am/Connor;->mEnable:Z

    .line 347
    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mEnable:Z

    if-eqz v1, :cond_6f

    .line 348
    new-instance v1, Lcom/android/server/am/ConnorDbHelper;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "/data/connor_training/connor.db"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/am/ConnorDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    .line 349
    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mRestoreMM:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    invoke-direct {p0}, Lcom/android/server/am/Connor;->copyPrototxtFiles()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/am/Connor;->initNN()V

    .line 353
    new-instance v1, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "RHJ2VVOOTS"

    invoke-direct {v1, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/Connor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 354
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v1, "sysFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v2, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/am/Connor$6;

    invoke-direct {v3, p0}, Lcom/android/server/am/Connor$6;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6f} :catch_70

    .line 396
    .end local v1    # "sysFilter":Landroid/content/IntentFilter;
    :cond_6f
    goto :goto_76

    .line 393
    :catch_70
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    iput-boolean v0, p0, Lcom/android/server/am/Connor;->mEnable:Z

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_76
    return-void
.end method

.method protected modelCompare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "model1"    # Ljava/lang/String;
    .param p2, "model2"    # Ljava/lang/String;

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v0

    .line 237
    .local v0, "mi1":Lcom/android/server/am/Connor$ModelInfo;
    invoke-direct {p0, p2}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v1

    .line 239
    .local v1, "mi2":Lcom/android/server/am/Connor$ModelInfo;
    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    const/4 v4, -0x1

    if-le v2, v3, :cond_10

    return v4

    .line 240
    :cond_10
    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    const/4 v5, 0x1

    if-ge v2, v3, :cond_18

    return v5

    .line 241
    :cond_18
    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_21

    return v5

    .line 242
    :cond_21
    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2a

    return v4

    .line 243
    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method public noteStartProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .line 784
    const-string v0, "activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 786
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts2:[Ljava/lang/String;

    .line 787
    .local v0, "pred":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 788
    .local v1, "i":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .end local v1    # "i":I
    .local v4, "i":I
    :goto_10
    const/4 v5, 0x3

    const-wide/16 v6, 0x1

    if-ge v1, v2, :cond_31

    aget-object v8, v0, v1

    .line 789
    .local v8, "s":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 790
    if-ge v4, v5, :cond_26

    iget-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM3:J

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM3:J

    .line 791
    :cond_26
    iget-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM5:J

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM5:J

    .line 792
    goto :goto_31

    .line 794
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    .line 788
    .end local v8    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 796
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN2:[Ljava/lang/String;

    .line 797
    const/4 v1, 0x0

    .line 798
    .end local v4    # "i":I
    .restart local v1    # "i":I
    array-length v2, v0

    :goto_35
    if-ge v3, v2, :cond_53

    aget-object v4, v0, v3

    .line 799
    .local v4, "s":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 800
    if-ge v1, v5, :cond_48

    iget-wide v2, p0, Lcom/android/server/am/Connor;->mSPHitNN3:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/Connor;->mSPHitNN3:J

    .line 801
    :cond_48
    iget-wide v2, p0, Lcom/android/server/am/Connor;->mSPHitNN5:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/Connor;->mSPHitNN5:J

    .line 802
    goto :goto_53

    .line 804
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    .line 798
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 806
    :cond_53
    :goto_53
    iget-wide v2, p0, Lcom/android/server/am/Connor;->mSPCount:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/Connor;->mSPCount:J

    .line 807
    return-void
.end method

.method registerCallback(Lcom/android/server/am/Connor$Callbacks;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/am/Connor$Callbacks;

    .line 810
    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 811
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    monitor-exit v0

    .line 813
    return-void

    .line 812
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public replicateData()V
    .registers 11

    .line 910
    iget-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 911
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "connor_history_table"

    const-string v0, "connor_package_name"

    const-string v3, "connor_is_home"

    const-string v4, "connor_ts"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 915
    .local v0, "cur":Landroid/database/Cursor;
    const-wide/16 v1, 0x1388

    :try_start_26
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 916
    .local v3, "cv":Landroid/content/ContentValues;
    :goto_2b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 917
    const-string v4, "connor_package_name"

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v4, "connor_is_home"

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    const-string v4, "connor_ts"

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 920
    iget-object v4, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "connor_history_table"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 921
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_62} :catch_68
    .catchall {:try_start_26 .. :try_end_62} :catchall_66

    goto :goto_2b

    .line 926
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_63
    if-eqz v0, :cond_71

    goto :goto_6e

    :catchall_66
    move-exception v3

    goto :goto_85

    .line 923
    :catch_68
    move-exception v3

    .line 924
    .local v3, "e":Ljava/lang/Exception;
    :try_start_69
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_66

    .line 926
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_71

    :goto_6e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 927
    :cond_71
    iget-object v3, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 928
    iget-object v3, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    nop

    .line 930
    return-void

    .line 926
    :goto_85
    if-eqz v0, :cond_8a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 927
    :cond_8a
    iget-object v4, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 928
    iget-object v4, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v3
.end method

.method public restoreFromFile()V
    .registers 18

    .line 862
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/anr/connor"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 863
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 864
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_11

    return-void

    .line 865
    :cond_11
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 867
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v4, v0

    .line 868
    .local v4, "cv":Landroid/content/ContentValues;
    iget-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 871
    :cond_26
    const/4 v5, 0x0

    :try_start_27
    array-length v0, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_2a
    if-ge v7, v0, :cond_ca

    aget-object v8, v3, v7

    .line 872
    .local v8, "file":Ljava/io/File;
    iget-object v9, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 873
    const-string v9, "Connor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restore file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 875
    .local v9, "fr":Ljava/io/FileReader;
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 877
    .local v10, "br":Ljava/io/BufferedReader;
    :goto_58
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .line 877
    .local v12, "line":Ljava/lang/String;
    if-eqz v11, :cond_b6

    .line 878
    const-string v11, "\\s"

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 879
    .local v11, "tokens":[Ljava/lang/String;
    const-string/jumbo v13, "not found"

    .line 880
    .local v13, "packageName":Ljava/lang/String;
    array-length v14, v11

    const/4 v15, 0x1

    if-ne v14, v15, :cond_70

    aget-object v14, v11, v6

    move-object v13, v14

    goto :goto_73

    .line 881
    :cond_70
    aget-object v14, v11, v15

    move-object v13, v14

    .line 882
    :goto_73
    const-string v14, "connor_package_name"

    invoke-virtual {v4, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v14, "connor_is_home"

    const-string v15, "com.android.systemui"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8e

    const-string/jumbo v15, "net.oneplus.launcher"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8c

    goto :goto_8e

    :cond_8c
    move v15, v6

    goto :goto_8f

    :cond_8e
    :goto_8e
    const/4 v15, 0x1

    :goto_8f
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 884
    const-string v14, "connor_ts"

    aget-object v15, v11, v6

    move/from16 v16, v7

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 885
    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "connor_history_table"

    invoke-virtual {v6, v7, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 886
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 887
    .end local v11    # "tokens":[Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    nop

    .line 875
    move/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_58

    .line 888
    :cond_b6
    move/from16 v16, v7

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 889
    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 890
    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_c5} :catch_d8
    .catchall {:try_start_27 .. :try_end_c5} :catchall_d6

    .line 871
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fr":Ljava/io/FileReader;
    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    add-int/lit8 v7, v16, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2a

    .line 896
    :cond_ca
    iget-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e6

    .line 897
    :goto_ce
    iget-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 898
    iput-object v5, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_e6

    .line 896
    :catchall_d6
    move-exception v0

    goto :goto_e7

    .line 892
    :catch_d8
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 894
    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e1
    .catchall {:try_start_d9 .. :try_end_e1} :catchall_d6

    .line 896
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e6

    goto :goto_ce

    .line 901
    :cond_e6
    :goto_e6
    return-void

    .line 896
    :goto_e7
    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_f2

    .line 897
    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 898
    iput-object v5, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_f2
    throw v0
.end method

.method public setTraining(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 400
    const-string v0, "Connor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set training "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    const-string/jumbo v2, "run"

    goto :goto_16

    :cond_13
    const-string/jumbo v2, "stop"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-nez p1, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    :cond_2b
    :try_start_2b
    const-string/jumbo v0, "sys.training"

    if-eqz p1, :cond_33

    const-string v1, "1"

    goto :goto_35

    :cond_33
    const-string v1, "0"

    :goto_35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_39

    .line 407
    goto :goto_45

    .line 404
    :catch_39
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Connor"

    const-string/jumbo v2, "set sys.training fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_45
    return-void
.end method

.method unregisterCallback(Lcom/android/server/am/Connor$Callbacks;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/am/Connor$Callbacks;

    .line 816
    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 817
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 818
    monitor-exit v0

    .line 819
    return-void

    .line 818
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
