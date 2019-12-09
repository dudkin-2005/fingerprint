.class Lcom/android/server/accounts/AccountsDb;
.super Ljava/lang/Object;
.source "AccountsDb.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;,
        Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;,
        Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_LAST_AUTHENTICATE_TIME_EPOCH_MILLIS:Ljava/lang/String; = "last_password_entry_time_millis_epoch"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_PREVIOUS_NAME:Ljava/lang/String; = "previous_name"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_ACCESS_GRANTS:Ljava/lang/String; = "SELECT name, uid FROM accounts, grants WHERE accounts_id=_id"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field static final CE_DATABASE_NAME:Ljava/lang/String; = "accounts_ce.db"

.field private static final CE_DATABASE_VERSION:I = 0xa

.field private static final CE_DB_PREFIX:Ljava/lang/String; = "ceDb."

.field private static final CE_TABLE_ACCOUNTS:Ljava/lang/String; = "ceDb.accounts"

.field private static final CE_TABLE_AUTHTOKENS:Ljava/lang/String; = "ceDb.authtokens"

.field private static final CE_TABLE_EXTRAS:Ljava/lang/String; = "ceDb.extras"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final COUNT_OF_MATCHING_GRANTS_ANY_TOKEN:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field static DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String; = null

.field static DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String; = null

.field static DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String; = null

.field static DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String; = null

.field static DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String; = null

.field static DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String; = null

.field static DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String; = null

.field static DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String; = null

.field static DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String; = null

.field static DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String; = null

.field static DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String; = null

.field static DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String; = null

.field private static DEBUG_TABLE_ACTION_TYPE:Ljava/lang/String; = null

.field private static DEBUG_TABLE_CALLER_UID:Ljava/lang/String; = null

.field private static DEBUG_TABLE_KEY:Ljava/lang/String; = null

.field private static DEBUG_TABLE_TABLE_NAME:Ljava/lang/String; = null

.field private static DEBUG_TABLE_TIMESTAMP:Ljava/lang/String; = null

.field static final DE_DATABASE_NAME:Ljava/lang/String; = "accounts_de.db"

.field private static final DE_DATABASE_VERSION:I = 0x3

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field static final MAX_DEBUG_DB_SIZE:I = 0x40

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_KEY_DELIMITER:Ljava/lang/String; = ":"

.field private static final META_KEY_FOR_AUTHENTICATOR_UID_FOR_TYPE_PREFIX:Ljava/lang/String; = "auth_uid_for_type:"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final PRE_N_DATABASE_VERSION:I = 0x9

.field private static final SELECTION_ACCOUNTS_ID_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_META_BY_AUTHENTICATOR_TYPE:Ljava/lang/String; = "key LIKE ?"

.field private static final SHARED_ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static TABLE_DEBUG:Ljava/lang/String; = null

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field static final TABLE_SHARED_ACCOUNTS:Ljava/lang/String; = "shared_accounts"

.field private static final TABLE_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final TAG:Ljava/lang/String; = "AccountsDb"

.field private static final VISIBILITY_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final VISIBILITY_PACKAGE:Ljava/lang/String; = "_package"

.field private static final VISIBILITY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

.field private final mPreNDatabaseFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 464
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 99
    const-string v0, "debug_table"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    .line 102
    const-string v0, "action_type"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_ACTION_TYPE:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "time"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    .line 104
    const-string v0, "caller_uid"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_CALLER_UID:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "table_name"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TABLE_NAME:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "primary_key"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    .line 111
    const-string v0, "action_set_password"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String;

    .line 112
    const-string v0, "action_clear_password"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    .line 113
    const-string v0, "action_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    .line 114
    const-string v0, "action_account_remove"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    .line 115
    const-string v0, "action_account_remove_de"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    .line 116
    const-string v0, "action_authenticator_remove"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    .line 117
    const-string v0, "action_account_rename"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    .line 124
    const-string v0, "action_called_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    .line 125
    const-string v0, "action_called_account_remove"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    .line 126
    const-string v0, "action_sync_de_ce_accounts"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    .line 130
    const-string v0, "action_called_start_account_add"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    .line 131
    const-string v0, "action_called_account_session_finish"

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "type"

    const-string v1, "count(type)"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "type"

    const-string v1, "authtoken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "key"

    const-string/jumbo v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Landroid/content/Context;Ljava/io/File;)V
    .registers 4
    .param p1, "deDatabase"    # Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "preNDatabaseFile"    # Ljava/io/File;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 188
    iput-object p2, p0, Lcom/android/server/accounts/AccountsDb;->mContext:Landroid/content/Context;

    .line 189
    iput-object p3, p0, Lcom/android/server/accounts/AccountsDb;->mPreNDatabaseFile:Ljava/io/File;

    .line 190
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_ACTION_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_CALLER_UID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "preNDatabaseFile"    # Ljava/io/File;
    .param p3, "deDatabaseFile"    # Ljava/io/File;

    .line 1349
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1350
    .local v0, "newDbExists":Z
    new-instance v1, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 1351
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/server/accounts/AccountsDb$1;)V

    .line 1353
    .local v1, "deDatabaseHelper":Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;
    if-nez v0, :cond_28

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1356
    new-instance v2, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;

    .line 1357
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1359
    .local v2, "preNDatabaseHelper":Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1360
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->close()V

    .line 1362
    # invokes: Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->migratePreNDbToDe(Ljava/io/File;)V
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->access$800(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Ljava/io/File;)V

    .line 1364
    .end local v2    # "preNDatabaseHelper":Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;
    :cond_28
    new-instance v2, Lcom/android/server/accounts/AccountsDb;

    invoke-direct {v2, v1, p0, p2}, Lcom/android/server/accounts/AccountsDb;-><init>(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Landroid/content/Context;Ljava/io/File;)V

    return-object v2
.end method

.method static deleteDbFileWarnIfFailed(Ljava/io/File;)V
    .registers 4
    .param p0, "dbFile"    # Ljava/io/File;

    .line 1342
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1343
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not deleted successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_21
    return-void
.end method


# virtual methods
.method attachCeDatabase(Ljava/io/File;)V
    .registers 5
    .param p1, "ceDbFile"    # Ljava/io/File;

    .line 1283
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mPreNDatabaseFile:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;->create(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;

    .line 1284
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1285
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTACH DATABASE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AS ceDb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->access$602(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Z)Z

    .line 1287
    return-void
.end method

.method beginTransaction()V
    .registers 2

    .line 1271
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1272
    return-void
.end method

.method calculateDebugTableInsertionPoint()I
    .registers 7

    .line 1294
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1295
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1296
    .local v1, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1297
    .local v3, "size":I
    const/16 v4, 0x40

    if-ge v3, v4, :cond_24

    .line 1298
    return v3

    .line 1303
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " LIMIT 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1307
    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    return v2
.end method

.method public close()V
    .registers 2

    .line 1338
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->close()V

    .line 1339
    return-void
.end method

.method compileSqlStatementForLogging()Landroid/database/sqlite/SQLiteStatement;
    .registers 4

    .line 1312
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1313
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VALUES (?,?,?,?,?,?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    return-object v2
.end method

.method deleteAccountVisibilityForPackage(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1023
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1024
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "visibility"

    const-string v2, "_package=? "

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_18

    goto :goto_19

    :cond_18
    move v3, v5

    :goto_19
    return v3
.end method

.method deleteAuthToken(Ljava/lang/String;)Z
    .registers 8
    .param p1, "authTokenId"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 364
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ceDb.authtokens"

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_17

    goto :goto_18

    :cond_17
    move v3, v5

    :goto_18
    return v3
.end method

.method deleteAuthTokensByAccountId(J)Z
    .registers 10
    .param p1, "accountId"    # J

    .line 410
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 411
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ceDb.authtokens"

    const-string v2, "accounts_id=?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 412
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 411
    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v6

    :goto_1c
    return v3
.end method

.method deleteAuthtokensByAccountIdAndType(JLjava/lang/String;)Z
    .registers 10
    .param p1, "accountId"    # J
    .param p3, "authtokenType"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 357
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ceDb.authtokens"

    const-string v2, "accounts_id=? AND type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 359
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p3, v3, v4

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v4, v5

    :goto_1f
    return v4
.end method

.method deleteCeAccount(J)Z
    .registers 7
    .param p1, "accountId"    # J

    .line 1261
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1262
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "ceDb.accounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method deleteDeAccount(J)Z
    .registers 7
    .param p1, "accountId"    # J

    .line 691
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 692
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method deleteGrantsByAccountIdAuthTokenTypeAndUid(JLjava/lang/String;J)Z
    .registers 14
    .param p1, "accountId"    # J
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "uid"    # J

    .line 863
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 864
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "grants"

    const-string v2, "accounts_id=? AND auth_token_type=? AND uid=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 867
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    .line 864
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_26

    goto :goto_27

    :cond_26
    move v4, v5

    :goto_27
    return v4
.end method

.method deleteGrantsByUid(I)Z
    .registers 9
    .param p1, "uid"    # I

    .line 909
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 910
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "grants"

    const-string/jumbo v2, "uid=?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 911
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 910
    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v6

    :goto_1e
    return v3
.end method

.method deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1070
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1071
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "meta"

    const-string/jumbo v2, "key=? AND value=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth_uid_for_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1076
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1071
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_32

    move v5, v6

    nop

    :cond_32
    return v5
.end method

.method deleteSharedAccount(Landroid/accounts/Account;)Z
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;

    .line 705
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 706
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "shared_accounts"

    const-string/jumbo v2, "name=? AND type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_21

    move v5, v6

    nop

    :cond_21
    return v5
.end method

.method dumpDeAccountsTable(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 780
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 781
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "accounts"

    sget-object v3, Lcom/android/server/accounts/AccountsDb;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "type"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 785
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_16
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_44

    goto :goto_16

    .line 790
    :cond_3e
    if-eqz v1, :cond_43

    .line 791
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_43
    return-void

    .line 790
    :catchall_44
    move-exception v2

    if-eqz v1, :cond_4a

    .line 791
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v2
.end method

.method dumpDebugTable(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1319
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1320
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    sget-object v8, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1322
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v2, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    const-string v2, "Accounts History"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    :goto_1e
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    .line 1328
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 1329
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1327
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_1e .. :try_end_79} :catchall_7f

    goto :goto_1e

    .line 1332
    :cond_7a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1333
    nop

    .line 1334
    return-void

    .line 1332
    :catchall_7f
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method endTransaction()V
    .registers 2

    .line 1279
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1280
    return-void
.end method

.method findAccountLastAuthenticatedTime(Landroid/accounts/Account;)J
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;

    .line 760
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 761
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT last_password_entry_time_millis_epoch FROM accounts WHERE name=? AND type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 484
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v9, "name=? AND type=?"

    .line 485
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v1, 0x1

    aput-object p2, v5, v1

    .line 486
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "password"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "columns":[Ljava/lang/String;
    const-string v2, "ceDb.accounts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 489
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 490
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2f} :catch_3e
    .catchall {:try_start_25 .. :try_end_2f} :catchall_3c

    .line 493
    if-eqz v1, :cond_34

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 490
    :cond_34
    return-object v4

    .line 492
    :cond_35
    nop

    .line 493
    if-eqz v1, :cond_3b

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 492
    :cond_3b
    return-object v2

    .line 493
    :catchall_3c
    move-exception v4

    goto :goto_40

    .line 487
    :catch_3e
    move-exception v2

    :try_start_3f
    throw v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 493
    :goto_40
    if-eqz v1, :cond_45

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_45
    throw v4
.end method

.method findAccountVisibility(JLjava/lang/String;)Ljava/lang/Integer;
    .registers 14
    .param p1, "accountId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 939
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 940
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "visibility"

    const-string/jumbo v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "accounts_id=? AND _package=? "

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 942
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v5, v9

    const/4 v1, 0x1

    aput-object p3, v5, v1

    .line 940
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 944
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 945
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_3f

    .line 948
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 945
    return-object v2

    .line 948
    :cond_39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 949
    nop

    .line 950
    const/4 v2, 0x0

    return-object v2

    .line 948
    :catchall_3f
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 925
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "visibility"

    const-string/jumbo v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?) AND _package=? "

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v5, v9

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    aput-object p2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 929
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 930
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_42

    .line 933
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 930
    return-object v2

    .line 933
    :cond_3c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 934
    nop

    .line 935
    const/4 v2, 0x0

    return-object v2

    .line 933
    :catchall_42
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findAllAccountGrants()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1085
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT name, uid FROM accounts, grants WHERE accounts_id=_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1086
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_41

    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_41

    .line 1089
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_1b
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1092
    .local v4, "accountName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1093
    .local v5, "uid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v5    # "uid":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_34} :catch_3f
    .catchall {:try_start_f .. :try_end_34} :catchall_3d

    if-nez v4, :cond_1b

    .line 1095
    nop

    .line 1096
    if-eqz v1, :cond_3c

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1095
    :cond_3c
    return-object v3

    .line 1096
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_3d
    move-exception v3

    goto :goto_4c

    .line 1085
    :catch_3f
    move-exception v2

    goto :goto_4b

    .line 1087
    :cond_41
    :goto_41
    :try_start_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_45} :catch_3f
    .catchall {:try_start_41 .. :try_end_45} :catchall_3d

    .line 1096
    if-eqz v1, :cond_4a

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1087
    :cond_4a
    return-object v3

    .line 1085
    :goto_4b
    :try_start_4b
    throw v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_3d

    .line 1096
    :goto_4c
    if-eqz v1, :cond_51

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_51
    throw v3
.end method

.method findAllDeAccounts()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 812
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v1

    .line 813
    .local v9, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Landroid/accounts/Account;>;"
    const-string v1, "_id"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "name"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, "columns":[Ljava/lang/String;
    const-string v2, "accounts"

    const-string v8, "_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 816
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_25
    const/4 v2, 0x0

    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 817
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 818
    .local v4, "accountId":J
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, "accountType":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 821
    .local v7, "accountName":Ljava/lang/String;
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v7, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .local v8, "account":Landroid/accounts/Account;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_47} :catch_50
    .catchall {:try_start_26 .. :try_end_47} :catchall_4e

    .line 823
    .end local v4    # "accountId":J
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v7    # "accountName":Ljava/lang/String;
    .end local v8    # "account":Landroid/accounts/Account;
    goto :goto_25

    .line 824
    :cond_48
    if-eqz v1, :cond_4d

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 825
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4d
    return-object v9

    .line 824
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_4e
    move-exception v4

    goto :goto_52

    .line 814
    :catch_50
    move-exception v2

    :try_start_51
    throw v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4e

    .line 824
    :goto_52
    if-eqz v1, :cond_57

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_57
    throw v4
.end method

.method findAllUidGrants()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 872
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 873
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v2, "grants"

    const-string/jumbo v1, "uid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "uid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 877
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_22
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 878
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 879
    .local v2, "uid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_3a

    .line 880
    .end local v2    # "uid":I
    goto :goto_22

    .line 882
    :cond_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 883
    nop

    .line 884
    return-object v9

    .line 882
    :catchall_3a
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findAllVisibilityValues()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 992
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 993
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string v2, "SELECT visibility._package, visibility.value, accounts.name, accounts.type FROM visibility JOIN accounts ON accounts._id = visibility.accounts_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1003
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_12
    :try_start_12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1004
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1005
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1006
    .local v4, "visibility":Ljava/lang/Integer;
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1007
    .local v5, "accountName":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1008
    .local v6, "accountType":Ljava/lang/String;
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    .local v7, "account":Landroid/accounts/Account;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 1010
    .local v8, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v8, :cond_46

    .line 1011
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v8, v9

    .line 1012
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    :cond_46
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_4f

    .line 1015
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "visibility":Ljava/lang/Integer;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v8    # "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_12

    .line 1017
    :cond_4a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1018
    nop

    .line 1019
    return-object v1

    .line 1017
    :catchall_4f
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method findAllVisibilityValuesForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 972
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    .line 973
    .local v9, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v2, "visibility"

    const-string v1, "_package"

    const-string/jumbo v3, "value"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v1, v5, v11

    .line 974
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 978
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_2f
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 979
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_4a

    goto :goto_2f

    .line 982
    :cond_45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 983
    nop

    .line 984
    return-object v9

    .line 982
    :catchall_4a
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 337
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    .line 338
    .local v9, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ceDb.authtokens"

    sget-object v3, Lcom/android/server/accounts/AccountsDb;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 344
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_27
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 345
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "type":Ljava/lang/String;
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "authToken":Ljava/lang/String;
    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3e

    .line 348
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "authToken":Ljava/lang/String;
    goto :goto_27

    .line 350
    :cond_39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 351
    nop

    .line 352
    return-object v9

    .line 350
    :catchall_3e
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findAuthtokenForAllAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT ceDb.authtokens._id, ceDb.accounts.name, ceDb.authtokens.type FROM ceDb.accounts JOIN ceDb.authtokens ON ceDb.accounts._id = ceDb.authtokens.accounts_id WHERE ceDb.authtokens.authtoken = ? AND ceDb.accounts.type = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method findCeAccountId(Landroid/accounts/Account;)J
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;

    .line 469
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 470
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "columns":[Ljava/lang/String;
    const-string/jumbo v9, "name=? AND type=?"

    .line 472
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 473
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v2, "ceDb.accounts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 475
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 476
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_32} :catch_42
    .catchall {:try_start_28 .. :try_end_32} :catchall_40

    .line 479
    if-eqz v1, :cond_37

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 476
    :cond_37
    return-wide v6

    .line 478
    :cond_38
    const-wide/16 v6, -0x1

    .line 479
    if-eqz v1, :cond_3f

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 478
    :cond_3f
    return-wide v6

    .line 479
    :catchall_40
    move-exception v4

    goto :goto_44

    .line 473
    :catch_42
    move-exception v2

    :try_start_43
    throw v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    .line 479
    :goto_44
    if-eqz v1, :cond_49

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_49
    throw v4
.end method

.method findCeAccountsNotInDe()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1240
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT name,type FROM ceDb.accounts WHERE NOT EXISTS  (SELECT _id FROM accounts WHERE _id=ceDb.accounts._id )"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1248
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1249
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    :goto_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1250
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1251
    .local v3, "accountName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1252
    .local v4, "accountType":Ljava/lang/String;
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_34

    .line 1253
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    goto :goto_16

    .line 1254
    :cond_2f
    nop

    .line 1256
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1254
    return-object v2

    .line 1256
    .end local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    :catchall_34
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findDeAccountByAccountId(J)Landroid/accounts/Account;
    .registers 14
    .param p1, "accountId"    # J

    .line 954
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 955
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "accounts"

    const-string/jumbo v1, "name"

    const-string/jumbo v3, "type"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id=? "

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    .line 956
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    .line 955
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 958
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 959
    new-instance v2, Landroid/accounts/Account;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_43

    .line 962
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 959
    return-object v2

    .line 962
    :cond_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 963
    nop

    .line 964
    const/4 v2, 0x0

    return-object v2

    .line 962
    :catchall_43
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findDeAccountId(Landroid/accounts/Account;)J
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;

    .line 797
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 798
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, "columns":[Ljava/lang/String;
    const-string/jumbo v9, "name=? AND type=?"

    .line 800
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 801
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v2, "accounts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 803
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 804
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_32} :catch_42
    .catchall {:try_start_28 .. :try_end_32} :catchall_40

    .line 807
    if-eqz v1, :cond_37

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 804
    :cond_37
    return-wide v6

    .line 806
    :cond_38
    const-wide/16 v6, -0x1

    .line 807
    if-eqz v1, :cond_3f

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 806
    :cond_3f
    return-wide v6

    .line 807
    :catchall_40
    move-exception v4

    goto :goto_44

    .line 801
    :catch_42
    move-exception v2

    :try_start_43
    throw v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    .line 807
    :goto_44
    if-eqz v1, :cond_49

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_49
    throw v4
.end method

.method findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;

    .line 829
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 830
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "previous_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 831
    .local v3, "columns":[Ljava/lang/String;
    const-string/jumbo v9, "name=? AND type=?"

    .line 832
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 833
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v2, "accounts"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 835
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 836
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_33} :catch_41
    .catchall {:try_start_29 .. :try_end_33} :catchall_3f

    .line 838
    if-eqz v1, :cond_38

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 836
    :cond_38
    return-object v4

    .line 838
    :cond_39
    if-eqz v1, :cond_3e

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 839
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3e
    return-object v2

    .line 838
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_3f
    move-exception v4

    goto :goto_43

    .line 833
    :catch_41
    move-exception v2

    :try_start_42
    throw v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 838
    :goto_43
    if-eqz v1, :cond_48

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_48
    throw v4
.end method

.method findExtrasIdByAccountId(JLjava/lang/String;)J
    .registers 14
    .param p1, "accountId"    # J
    .param p3, "key"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 417
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "ceDb.extras"

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "key"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p3, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 422
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 423
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_51

    .line 427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 423
    return-wide v2

    .line 425
    :cond_4b
    const-wide/16 v2, -0x1

    .line 427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 425
    return-wide v2

    .line 427
    :catchall_51
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findMatchingGrantsCount(ILjava/lang/String;Landroid/accounts/Account;)J
    .registers 8
    .param p1, "uid"    # I
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;

    .line 888
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 889
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iget-object v2, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 890
    .local v1, "args":[Ljava/lang/String;
    const-string v2, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    invoke-static {v0, v2, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method findMatchingGrantsCountAnyToken(ILandroid/accounts/Account;)J
    .registers 7
    .param p1, "uid"    # I
    .param p2, "account"    # Landroid/accounts/Account;

    .line 894
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 895
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 896
    .local v1, "args":[Ljava/lang/String;
    const-string v2, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

    invoke-static {v0, v2, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method findMetaAuthUid()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1040
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "meta"

    const-string/jumbo v1, "key"

    const-string/jumbo v3, "value"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "key LIKE ?"

    const-string v1, "auth_uid_for_type:%"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "key"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1048
    .local v1, "metaCursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1050
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_2b
    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1051
    const/4 v3, 0x0

    .line 1052
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 1053
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1054
    .local v5, "uidStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_60

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_60

    .line 1060
    :cond_50
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1061
    .local v4, "uid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "uidStr":Ljava/lang/String;
    goto :goto_2b

    .line 1056
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v5    # "uidStr":Ljava/lang/String;
    :cond_60
    :goto_60
    const-string v4, "AccountsDb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auth type empty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", uid empty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1056
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_2b .. :try_end_86} :catchall_8c

    .line 1058
    goto :goto_2b

    .line 1064
    .end local v3    # "type":Ljava/lang/String;
    .end local v5    # "uidStr":Ljava/lang/String;
    :cond_87
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1065
    nop

    .line 1066
    return-object v2

    .line 1064
    :catchall_8c
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method findSharedAccountId(Landroid/accounts/Account;)J
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;

    .line 744
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 745
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "shared_accounts"

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name=? AND type=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v5, v9

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 750
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 751
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3b

    .line 755
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 751
    return-wide v2

    .line 753
    :cond_35
    const-wide/16 v2, -0x1

    .line 755
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 753
    return-wide v2

    .line 755
    :catchall_3b
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 452
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    .line 453
    .local v9, "userExtrasForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v1, v5, v11

    .line 454
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v2, "ceDb.extras"

    sget-object v3, Lcom/android/server/accounts/AccountsDb;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v4, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 459
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_27
    const/4 v2, 0x0

    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 460
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "tmpkey":Ljava/lang/String;
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_39} :catch_42
    .catchall {:try_start_28 .. :try_end_39} :catchall_40

    .line 463
    .end local v3    # "tmpkey":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_27

    .line 464
    :cond_3a
    if-eqz v1, :cond_3f

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 465
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3f
    return-object v9

    .line 464
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_40
    move-exception v3

    goto :goto_44

    .line 454
    :catch_42
    move-exception v2

    :try_start_43
    throw v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    .line 464
    :goto_44
    if-eqz v1, :cond_49

    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountsDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_49
    throw v3
.end method

.method getSharedAccounts()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 722
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 723
    .local v9, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v1, 0x0

    move-object v10, v1

    .line 725
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_e
    const-string/jumbo v2, "shared_accounts"

    const-string/jumbo v1, "name"

    const-string/jumbo v3, "type"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v10, v1

    .line 727
    if-eqz v10, :cond_52

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 728
    const-string/jumbo v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 729
    .local v1, "nameIndex":I
    const-string/jumbo v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 731
    .local v2, "typeIndex":I
    :cond_3c
    new-instance v3, Landroid/accounts/Account;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 732
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_58

    if-nez v3, :cond_3c

    .line 736
    .end local v1    # "nameIndex":I
    .end local v2    # "typeIndex":I
    :cond_52
    if-eqz v10, :cond_57

    .line 737
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_57
    return-object v9

    .line 736
    :catchall_58
    move-exception v1

    if-eqz v10, :cond_5e

    .line 737
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5e
    throw v1
.end method

.method insertAuthToken(JLjava/lang/String;Ljava/lang/String;)J
    .registers 9
    .param p1, "accountId"    # J
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 371
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "accounts_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "authtoken"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v2, "ceDb.authtokens"

    const-string v3, "authtoken"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertCeAccount(Landroid/accounts/Account;Ljava/lang/String;)J
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 498
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 499
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string/jumbo v2, "type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v2, "ceDb.accounts"

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertDeAccount(Landroid/accounts/Account;J)J
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accountId"    # J

    .line 843
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 844
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 845
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 846
    const-string/jumbo v2, "name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string/jumbo v2, "type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 849
    const-string v2, "accounts"

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertExtra(JLjava/lang/String;Ljava/lang/String;)J
    .registers 9
    .param p1, "accountId"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 443
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "key"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v2, "accounts_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v2, "ceDb.extras"

    const-string/jumbo v3, "key"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertGrant(JLjava/lang/String;I)J
    .registers 9
    .param p1, "accountId"    # J
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 900
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 901
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 902
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "accounts_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 903
    const-string v2, "auth_token_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string/jumbo v2, "uid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    const-string/jumbo v2, "grants"

    const-string v3, "accounts_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method insertOrReplaceMetaAuthTypeAndUid(Ljava/lang/String;I)J
    .registers 8
    .param p1, "authenticatorType"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1029
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1030
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1031
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auth_uid_for_type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v2, "value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string/jumbo v2, "meta"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    return-wide v2
.end method

.method insertSharedAccount(Landroid/accounts/Account;)J
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;

    .line 696
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 697
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 698
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string/jumbo v2, "type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string/jumbo v2, "shared_accounts"

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method isCeDatabaseAttached()Z
    .registers 2

    .line 1267
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    # getter for: Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z
    invoke-static {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->access$600(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;)Z

    move-result v0

    return v0
.end method

.method renameCeAccount(JLjava/lang/String;)Z
    .registers 11
    .param p1, "accountId"    # J
    .param p3, "newName"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 402
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 405
    .local v3, "argsAccountId":[Ljava/lang/String;
    const-string v4, "ceDb.accounts"

    const-string v6, "_id=?"

    invoke-virtual {v0, v4, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_26

    goto :goto_27

    :cond_26
    move v2, v5

    :goto_27
    return v2
.end method

.method renameDeAccount(JLjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "accountId"    # J
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "previousName"    # Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 854
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 855
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string/jumbo v2, "previous_name"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 858
    .local v3, "argsAccountId":[Ljava/lang/String;
    const-string v4, "accounts"

    const-string v6, "_id=?"

    invoke-virtual {v0, v4, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v5

    :goto_2d
    return v2
.end method

.method renameSharedAccount(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 712
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string/jumbo v2, "shared_accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method setAccountVisibility(JLjava/lang/String;I)Z
    .registers 11
    .param p1, "accountId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "visibility"    # I

    .line 915
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 916
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 917
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "accounts_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v2, "_package"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string/jumbo v2, "value"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string/jumbo v2, "visibility"

    const-string/jumbo v3, "value"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    return v2
.end method

.method setTransactionSuccessful()V
    .registers 2

    .line 1275
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1276
    return-void
.end method

.method updateAccountLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;

    .line 769
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 770
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 771
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 772
    const-string v2, "accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 776
    .local v2, "rowCount":I
    if-lez v2, :cond_33

    move v6, v7

    nop

    :cond_33
    return v6
.end method

.method updateAccountUid(ILjava/lang/String;)I
    .registers 10
    .param p1, "uid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 383
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 384
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string/jumbo v2, "meta"

    const-string/jumbo v3, "key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth_uid_for_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method updateCeAccountPassword(JLjava/lang/String;)I
    .registers 11
    .param p1, "accountId"    # J
    .param p3, "password"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 393
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "ceDb.accounts"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 397
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 395
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method updateExtra(JLjava/lang/String;)Z
    .registers 12
    .param p1, "extrasId"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 433
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v2, "extras"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 437
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 435
    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 438
    .local v2, "rows":I
    if-ne v2, v4, :cond_26

    goto :goto_27

    :cond_26
    move v4, v7

    :goto_27
    return v4
.end method
