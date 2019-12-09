.class Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserAccounts"
.end annotation


# instance fields
.field final accountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final accountTokenCaches:Lcom/android/server/accounts/TokenCache;

.field final accountsDb:Lcom/android/server/accounts/AccountsDb;

.field private final authTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final cacheLock:Ljava/lang/Object;

.field private final credentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/accounts/AccountManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field final dbLock:Ljava/lang/Object;

.field private debugDbInsertionPoint:I

.field private final mReceiversForType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final previousNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final signinRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field private statementForLogging:Landroid/database/sqlite/SQLiteStatement;

.field private final userDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userId:I

.field private final visibilityCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    .locals 2

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 219
    new-instance v0, Lcom/android/server/accounts/TokenCache;

    invoke-direct {v0}, Lcom/android/server/accounts/TokenCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    .line 248
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 249
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 252
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 253
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method static synthetic access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    return p0
.end method

.method static synthetic access$3702(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I
    .locals 0

    .line 203
    iput p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    return-object p0
.end method
