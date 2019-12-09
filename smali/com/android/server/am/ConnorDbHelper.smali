.class public Lcom/android/server/am/ConnorDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ConnorDbHelper.java"


# static fields
.field protected static final CONNOR_FEED_COUNT:Ljava/lang/String; = "connor_feed_count"

.field protected static final CONNOR_FEED_HIT:Ljava/lang/String; = "connor_feed_hit"

.field protected static final CONNOR_ID:Ljava/lang/String; = "connor_id"

.field protected static final CONNOR_ISHOME:Ljava/lang/String; = "connor_is_home"

.field protected static final CONNOR_MODEL_ACC:Ljava/lang/String; = "connor_model_acc"

.field protected static final CONNOR_MODEL_LOSS:Ljava/lang/String; = "connor_model_loss"

.field protected static final CONNOR_MODEL_VERSION:Ljava/lang/String; = "connor_model_ver"

.field protected static final CONNOR_PACKAGENAME:Ljava/lang/String; = "connor_package_name"

.field protected static final CONNOR_PREDICT_NUMBER:Ljava/lang/String; = "connor_predict_num"

.field protected static final CONNOR_START_PROC_COUNT:Ljava/lang/String; = "connor_proc_count"

.field protected static final CONNOR_START_PROC_HIT:Ljava/lang/String; = "connor_proc_hit"

.field protected static final CONNOR_STATISTIC_CATEGORY:Ljava/lang/String; = "connor_stat_category"

.field protected static final CONNOR_STATISTIC_TABLE:Ljava/lang/String; = "connor_statistic_table"

.field protected static final CONNOR_TABLE_NAME:Ljava/lang/String; = "connor_history_table"

.field protected static final CONNOR_TS:Ljava/lang/String; = "connor_ts"

.field protected static final CREATE_HISTORY_TABLE:Ljava/lang/String; = "CREATE TABLE connor_history_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_ts INTEGER, connor_package_name TEXT, connor_is_home INTEGER)"

.field protected static final CREATE_STATISTIC_TABLE:Ljava/lang/String; = "CREATE TABLE connor_statistic_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_model_ver INTEGER, connor_model_acc INTEGER, connor_model_loss REAL, connor_stat_category TEXT, connor_predict_num INTEGER, connor_feed_count INTEGER, connor_feed_hit INTEGER, connor_proc_count INTEGER, connor_proc_hit INTEGER)"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnorDbHelper"


# instance fields
.field private final DB_MAX_ENTRY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 59
    const-string v0, "15000"

    iput-object v0, p0, Lcom/android/server/am/ConnorDbHelper;->DB_MAX_ENTRY:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    const-string v0, "CREATE TABLE connor_history_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_ts INTEGER, connor_package_name TEXT, connor_is_home INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "CREATE TABLE connor_statistic_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_model_ver INTEGER, connor_model_acc INTEGER, connor_model_loss REAL, connor_stat_category TEXT, connor_predict_num INTEGER, connor_feed_count INTEGER, connor_feed_hit INTEGER, connor_proc_count INTEGER, connor_proc_hit INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 73
    const-string v0, "ConnorDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade old ver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new ver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2a

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2a

    .line 75
    const-string v0, "CREATE TABLE connor_statistic_table (connor_id INTEGER PRIMARY KEY AUTOINCREMENT, connor_model_ver INTEGER, connor_model_acc INTEGER, connor_model_loss REAL, connor_stat_category TEXT, connor_predict_num INTEGER, connor_feed_count INTEGER, connor_feed_hit INTEGER, connor_proc_count INTEGER, connor_proc_hit INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    :cond_2a
    return-void
.end method

.method public restoreMM()V
    .registers 11

    .line 80
    invoke-virtual {p0}, Lcom/android/server/am/ConnorDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 81
    .local v9, "sqlDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "connor_history_table"

    const-string v0, "connor_package_name"

    const-string v2, "connor_id"

    const-string v3, "connor_ts"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "connor_is_home = 0 "

    const-string v7, "connor_id desc "

    const-string v8, "15000"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    .local v0, "cur":Landroid/database/Cursor;
    :try_start_1e
    const-string v1, "connor_package_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "indexPackageName":I
    const-string v2, "connor_ts"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, "indexTimeStamp":I
    const/4 v3, 0x0

    .line 92
    .local v3, "offset":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 93
    const-string v4, "connor_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v3, v4

    .line 94
    :goto_3c
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_52

    .line 96
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/Connor;->nativeFeed(JLjava/lang/String;Z)V

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_3c

    .line 101
    :cond_52
    if-lez v3, :cond_68

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM connor_history_table WHERE connor_id < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_68} :catch_72
    .catchall {:try_start_1e .. :try_end_68} :catchall_70

    .line 106
    .end local v1    # "indexPackageName":I
    .end local v2    # "indexTimeStamp":I
    .end local v3    # "offset":I
    :cond_68
    if-eqz v0, :cond_6d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_6d
    if-eqz v9, :cond_80

    goto :goto_7d

    .line 106
    :catchall_70
    move-exception v1

    goto :goto_81

    .line 103
    :catch_72
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    :try_start_73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_70

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_7b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_7b
    if-eqz v9, :cond_80

    :goto_7d
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 109
    :cond_80
    return-void

    .line 106
    :goto_81
    if-eqz v0, :cond_86

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_86
    if-eqz v9, :cond_8b

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8b
    throw v1
.end method
