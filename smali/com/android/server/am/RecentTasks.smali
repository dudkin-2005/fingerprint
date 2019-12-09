.class Lcom/android/server/am/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final MOVE_AFFILIATED_TASKS_TO_FRONT:Z = false

.field private static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field private static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TASK_ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIMMED:Z = true


# instance fields
.field private mActiveTasksSessionDurationMs:J

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RecentTasks$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalMaxNumTasks:I

.field private mHasVisibleRecentTasks:Z

.field private mMaxNumVisibleTasks:I

.field private mMinNumVisibleTasks:I

.field private final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsComponent:Landroid/content/ComponentName;

.field private mRecentsUid:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTaskPersister:Lcom/android/server/am/TaskPersister;

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

.field private final mUserController:Lcom/android/server/am/UserController;

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

.field private final mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    sget-object v0, Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;->INSTANCE:Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;

    sput-object v0, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 119
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 120
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 154
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 179
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 180
    new-instance v0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 181
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    .line 194
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 195
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 196
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 197
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    .line 198
    new-instance v2, Lcom/android/server/am/TaskPersister;

    invoke-direct {v2, v0, p2, p1, p0}, Lcom/android/server/am/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 199
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 200
    const p1, 0x1120089

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    .line 202
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskPersister;Lcom/android/server/am/UserController;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 154
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 179
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 180
    new-instance v0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 181
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    .line 186
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 187
    iput-object p3, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    .line 188
    iput-object p2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 189
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 190
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 191
    return-void
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I
    .locals 13

    .line 1262
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1263
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1264
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1265
    move v4, v3

    goto :goto_0

    .line 1264
    :cond_0
    nop

    .line 1265
    move v4, v2

    :goto_0
    iget v5, p1, Lcom/android/server/am/TaskRecord;->maxRecents:I

    sub-int/2addr v5, v3

    .line 1266
    move v6, v5

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_e

    .line 1267
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 1268
    if-eq p1, v7, :cond_d

    .line 1269
    invoke-direct {p0, p1, v7}, Lcom/android/server/am/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget v9, v7, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v8, v9, :cond_1

    .line 1271
    goto/16 :goto_8

    .line 1273
    :cond_1
    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1274
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 1275
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1276
    move v9, v3

    goto :goto_2

    .line 1275
    :cond_2
    nop

    .line 1276
    move v9, v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v8}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1277
    move v10, v3

    goto :goto_3

    .line 1276
    :cond_3
    nop

    .line 1277
    move v10, v2

    .line 1278
    :goto_3
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v11

    .line 1279
    const/high16 v12, 0x10080000

    and-int/2addr v12, v11

    if-eqz v12, :cond_4

    const/high16 v12, 0x8000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    .line 1281
    nop

    .line 1283
    move v11, v3

    goto :goto_4

    :cond_4
    move v11, v2

    :goto_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/content/Intent;->isDocument()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1284
    move v8, v3

    goto :goto_5

    .line 1283
    :cond_5
    nop

    .line 1284
    move v8, v2

    :goto_5
    if-eqz v4, :cond_6

    if-eqz v8, :cond_6

    .line 1285
    move v12, v3

    goto :goto_6

    .line 1284
    :cond_6
    nop

    .line 1285
    move v12, v2

    :goto_6
    if-nez v9, :cond_7

    if-nez v10, :cond_7

    if-nez v12, :cond_7

    .line 1286
    goto :goto_8

    .line 1289
    :cond_7
    if-eqz v12, :cond_b

    .line 1291
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_8

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1293
    invoke-virtual {v8, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1294
    move v7, v3

    goto :goto_7

    .line 1293
    :cond_8
    nop

    .line 1294
    move v7, v2

    :goto_7
    if-nez v7, :cond_9

    .line 1297
    goto :goto_8

    .line 1298
    :cond_9
    if-lez v6, :cond_a

    .line 1299
    add-int/lit8 v6, v6, -0x1

    .line 1300
    if-eqz v10, :cond_c

    if-eqz v11, :cond_a

    .line 1304
    goto :goto_8

    .line 1309
    :cond_a
    goto :goto_9

    :cond_b
    if-nez v4, :cond_c

    if-eqz v8, :cond_d

    .line 1311
    nop

    .line 1266
    :cond_c
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1314
    :cond_d
    :goto_9
    return v5

    .line 1316
    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 8

    .line 1569
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    .line 1570
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result p1

    .line 1571
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1572
    move v3, v2

    goto :goto_0

    .line 1571
    :cond_0
    nop

    .line 1572
    move v3, v1

    :goto_0
    if-nez p1, :cond_1

    .line 1573
    move v4, v2

    goto :goto_1

    .line 1572
    :cond_1
    nop

    .line 1573
    move v4, v1

    :goto_1
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v5

    .line 1574
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result p2

    .line 1575
    if-nez v5, :cond_2

    .line 1576
    move v6, v2

    goto :goto_2

    .line 1575
    :cond_2
    nop

    .line 1576
    move v6, v1

    :goto_2
    if-nez p2, :cond_3

    .line 1580
    move v7, v2

    goto :goto_3

    .line 1576
    :cond_3
    nop

    .line 1580
    move v7, v1

    :goto_3
    if-eq v0, v5, :cond_5

    if-nez v3, :cond_5

    if-eqz v6, :cond_4

    goto :goto_4

    .line 1582
    :cond_4
    move v0, v1

    goto :goto_5

    .line 1580
    :cond_5
    :goto_4
    nop

    .line 1582
    move v0, v2

    :goto_5
    if-eq p1, p2, :cond_7

    if-nez v4, :cond_7

    if-eqz v7, :cond_6

    goto :goto_6

    .line 1585
    :cond_6
    move p1, v1

    goto :goto_7

    .line 1582
    :cond_7
    :goto_6
    nop

    .line 1585
    move p1, v2

    :goto_7
    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    move v1, v2

    nop

    :cond_8
    return v1
.end method

.method private isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z
    .locals 3

    .line 1107
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1110
    return v1

    .line 1113
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, v2, :cond_1

    .line 1115
    iget p1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object p1

    .line 1116
    if-eqz p1, :cond_1

    .line 1117
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1120
    return v1

    .line 1126
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z
    .locals 6

    .line 1182
    nop

    .line 1183
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 1185
    move v0, v3

    goto :goto_0

    .line 1183
    :cond_0
    nop

    .line 1185
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1187
    if-ne p2, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    return v2

    .line 1190
    :cond_2
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    if-gt p2, v0, :cond_3

    .line 1193
    return v3

    .line 1196
    :cond_3
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz v0, :cond_5

    .line 1198
    iget p1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    if-gt p2, p1, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2

    .line 1201
    :cond_5
    iget-wide v0, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-lez p2, :cond_6

    .line 1204
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_6

    .line 1205
    return v3

    .line 1209
    :cond_6
    return v2
.end method

.method private isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 3

    .line 1141
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1149
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 1152
    return v1

    .line 1145
    :pswitch_1
    return v1

    .line 1157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1162
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1163
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1165
    return v1

    .line 1159
    :pswitch_3
    return v1

    .line 1170
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/LockTaskController;->getRootTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1171
    return v1

    .line 1174
    :cond_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic lambda$static$0(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 0

    .line 115
    iget p1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget p0, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded persisted task ids for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 12

    .line 1393
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1394
    nop

    .line 1395
    nop

    .line 1396
    move-object v1, p1

    move v2, p2

    :goto_0
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 1397
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1398
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1403
    :cond_0
    iget v3, v1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    .line 1404
    move v3, v5

    goto :goto_1

    .line 1403
    :cond_1
    nop

    .line 1404
    move v3, v6

    .line 1405
    :goto_1
    nop

    .line 1406
    move-object v7, v1

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_a

    .line 1407
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1410
    const/4 v9, -0x1

    if-ne v8, v1, :cond_3

    .line 1412
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_2

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v10, v9, :cond_4

    .line 1413
    :cond_2
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chain @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": first task has next affiliate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    nop

    .line 1416
    nop

    .line 1469
    :goto_3
    move v3, v6

    goto/16 :goto_5

    .line 1420
    :cond_3
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v10, v7, :cond_9

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v11, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v10, v11, :cond_4

    goto/16 :goto_4

    .line 1431
    :cond_4
    iget v7, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v7, v9, :cond_5

    .line 1433
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_a

    .line 1434
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chain @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": last task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has previous affiliate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    goto :goto_3

    .line 1443
    :cond_5
    iget-object v7, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v7, :cond_6

    .line 1444
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chain @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has previous affiliate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but should be id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    nop

    .line 1449
    goto :goto_3

    .line 1452
    :cond_6
    iget v7, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v7, v9, :cond_7

    .line 1453
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chain @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has affiliated id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but should be "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    nop

    .line 1458
    goto/16 :goto_3

    .line 1460
    :cond_7
    nop

    .line 1461
    add-int/lit8 v4, v4, 0x1

    .line 1462
    if-lt v4, v0, :cond_8

    .line 1463
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chain ran off index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": last task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    nop

    .line 1466
    goto/16 :goto_3

    .line 1468
    :cond_8
    nop

    .line 1406
    move-object v7, v8

    goto/16 :goto_2

    .line 1422
    :cond_9
    :goto_4
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chain @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": middle task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has bad next affiliate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    nop

    .line 1428
    goto/16 :goto_3

    .line 1469
    :cond_a
    :goto_5
    if-eqz v3, :cond_b

    .line 1470
    if-ge v4, p2, :cond_b

    .line 1471
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chain @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": did not extend to task "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " @"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    nop

    .line 1476
    move v3, v6

    :cond_b
    if-eqz v3, :cond_d

    .line 1479
    move p1, v2

    :goto_6
    if-gt p1, v4, :cond_c

    .line 1482
    iget-object p2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/TaskRecord;

    .line 1483
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v1, p1, v2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1479
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1487
    :cond_c
    return v5

    .line 1491
    :cond_d
    return v6
.end method

.method private notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 319
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .locals 2

    .line 325
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-void
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 10

    .line 1321
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 1322
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 1325
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_0

    .line 1330
    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1331
    add-int/2addr p1, v3

    return p1

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1336
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-lt v0, p1, :cond_2

    .line 1337
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1338
    iget v4, v2, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v4, v1, :cond_1

    .line 1339
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1340
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1346
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1350
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 1351
    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1352
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 1353
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link error 1 first.next="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1355
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1358
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1359
    move v2, v1

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_6

    .line 1360
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 1361
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 1362
    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v7, v6, :cond_4

    .line 1363
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 2 next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " setting prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1366
    invoke-virtual {p0, v5, v1}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1368
    :cond_4
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v7, v5, :cond_5

    .line 1369
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 3 prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " setting next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {v6, v5}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1372
    invoke-virtual {p0, v6, v1}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1374
    :cond_5
    iput-boolean v3, v6, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1359
    goto :goto_1

    .line 1377
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1378
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_7

    .line 1379
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link error 4 last.prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1381
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1385
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1386
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1389
    add-int/2addr p1, v0

    return p1
.end method

.method private removeForAddTask(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 1239
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    .line 1240
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1242
    return-void

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 1249
    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 1250
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1254
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1255
    return-void
.end method

.method private removeTasksForUserLocked(I)V
    .locals 3

    .line 491
    if-gtz p1, :cond_0

    .line 492
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove recent task on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 497
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 498
    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v1, p1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 496
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 504
    :cond_2
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 428
    iget-boolean p0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private syncPersistentTaskIdsLocked()V
    .locals 6

    .line 403
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 405
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 403
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    .line 412
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 413
    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 417
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No task ids found for userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mPersistedTaskIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 411
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 424
    :cond_4
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .locals 8

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1039
    :goto_0
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1041
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1042
    add-int/lit8 v0, v0, -0x1

    .line 1045
    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1050
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    aget v5, v0, v4

    .line 1051
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1052
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1053
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1050
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1060
    :cond_2
    nop

    .line 1061
    move v0, v3

    move v1, v0

    :goto_2
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 1062
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1064
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1065
    iget-boolean v5, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v5, :cond_3

    .line 1067
    add-int/lit8 v0, v0, 0x1

    .line 1068
    goto :goto_2

    .line 1071
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1073
    add-int/lit8 v0, v0, 0x1

    .line 1074
    goto :goto_2

    .line 1076
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1077
    invoke-direct {p0, v4, v1}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/server/am/RecentTasks;->isTrimmable(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1079
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 1080
    goto :goto_2

    .line 1094
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1095
    invoke-direct {p0, v4, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1096
    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1097
    goto :goto_2

    .line 1098
    :cond_7
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/am/TaskRecord;)V
    .locals 6

    .line 878
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    move v0, v3

    goto :goto_1

    .line 878
    :cond_1
    :goto_0
    nop

    .line 882
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 886
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_2

    .line 889
    return-void

    .line 892
    :cond_2
    if-nez v0, :cond_3

    if-lez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 894
    return-void

    .line 898
    :cond_3
    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 899
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v1, v4, :cond_4

    .line 902
    return-void

    .line 905
    :cond_4
    nop

    .line 909
    iget-boolean v1, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v1, :cond_6

    .line 910
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 911
    if-ltz v1, :cond_5

    .line 912
    nop

    .line 914
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 915
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 916
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 919
    return-void

    .line 932
    :cond_5
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task with inRecent not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    nop

    .line 938
    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeForAddTask(Lcom/android/server/am/TaskRecord;)V

    .line 940
    iput-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 941
    if-eqz v0, :cond_d

    if-eqz v1, :cond_7

    goto :goto_5

    .line 947
    :cond_7
    if-eqz v0, :cond_e

    .line 950
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 951
    if-nez v0, :cond_8

    .line 952
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 954
    :cond_8
    if-eqz v0, :cond_c

    .line 955
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 956
    if-ltz v1, :cond_b

    .line 959
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v0, v3, :cond_9

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 966
    :cond_9
    nop

    .line 970
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 971
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 974
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 976
    return-void

    .line 981
    :cond_a
    nop

    .line 982
    goto :goto_4

    .line 985
    :cond_b
    nop

    .line 987
    :goto_4
    goto :goto_6

    .line 990
    :cond_c
    goto :goto_6

    .line 944
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 945
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 994
    :cond_e
    move v2, v1

    :goto_6
    if-eqz v2, :cond_f

    .line 996
    iget p1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 1000
    :cond_f
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->trimInactiveRecentTasks()V

    .line 1001
    return-void
.end method

.method addToBottom(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    .line 1007
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    const/4 p1, 0x0

    return p1

    .line 1013
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1014
    const/4 p1, 0x1

    return p1
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 552
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 553
    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, p3, :cond_0

    .line 554
    goto :goto_3

    .line 557
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 558
    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    .line 559
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 560
    :cond_2
    move v3, v1

    goto :goto_2

    .line 559
    :cond_3
    nop

    .line 560
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    .line 561
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string v5, "disabled-package"

    invoke-virtual {v3, v2, v4, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 551
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 565
    :cond_5
    return-void
.end method

.method cleanupLocked(I)V
    .locals 9

    .line 573
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 574
    if-nez v0, :cond_0

    .line 577
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 582
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 584
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 585
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_d

    .line 586
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 587
    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    iget v5, v4, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v5, p1, :cond_1

    .line 589
    goto/16 :goto_5

    .line 591
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_2

    .line 593
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 594
    invoke-direct {p0, v4, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 595
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing auto-remove without activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    goto/16 :goto_5

    .line 599
    :cond_2
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_c

    .line 600
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    .line 601
    if-nez v5, :cond_4

    .line 606
    :try_start_0
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const v6, 0x10000400

    invoke-interface {v1, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    nop

    .line 613
    if-nez v5, :cond_3

    .line 614
    sget-object v5, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 616
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 609
    :catch_0
    move-exception v3

    .line 611
    goto/16 :goto_5

    .line 618
    :cond_4
    :goto_1
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const/high16 v7, 0x800000

    if-ne v5, v6, :cond_9

    .line 622
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 623
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 624
    if-nez v5, :cond_6

    .line 626
    :try_start_1
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-interface {v1, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    nop

    .line 632
    if-nez v5, :cond_5

    .line 633
    sget-object v5, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 635
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v8, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 628
    :catch_1
    move-exception v3

    .line 630
    goto :goto_5

    .line 637
    :cond_6
    :goto_2
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v5, v6, :cond_8

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v7

    if-nez v5, :cond_7

    goto :goto_3

    .line 648
    :cond_7
    iput-boolean v3, v4, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 650
    goto :goto_5

    .line 640
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 641
    invoke-direct {p0, v4, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 642
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing no longer valid recent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    goto :goto_5

    .line 651
    :cond_9
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_b

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_b

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v7

    if-nez v5, :cond_a

    goto :goto_4

    .line 665
    :cond_a
    iput-boolean v2, v4, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto :goto_5

    .line 661
    :cond_b
    :goto_4
    iput-boolean v3, v4, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 585
    :cond_c
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 672
    :cond_d
    nop

    .line 673
    iget-object p1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 674
    :goto_6
    if-ge v3, p1, :cond_e

    .line 675
    invoke-direct {p0, v3}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_6

    .line 678
    :cond_e
    return-void
.end method

.method containsTaskId(II)Z
    .locals 1

    .line 377
    invoke-direct {p0, p2}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 378
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 3

    .line 1534
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 1535
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1536
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 1537
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1538
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 1539
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 1540
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    .line 1541
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    .line 1542
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 1543
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1544
    iget-wide v1, p1, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 1545
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    .line 1546
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 1547
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1548
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1549
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 1551
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 1552
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    .line 1553
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1555
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V

    .line 1556
    iget-object p1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget p1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1557
    iget-object p1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object p1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object p1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    iput-object p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1558
    iget-object p1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object p1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object p1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    nop

    :cond_3
    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1560
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 6

    .line 1495
    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    return-void

    .line 1502
    :cond_0
    nop

    .line 1503
    nop

    .line 1504
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1505
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1506
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1507
    if-eqz p3, :cond_1

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1508
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1509
    goto :goto_1

    .line 1512
    :cond_1
    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 1513
    const-string v2, "  Recent tasks:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    nop

    .line 1515
    nop

    .line 1517
    move v2, v5

    move v3, v2

    :cond_2
    const-string v5, "  * Recent #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1519
    if-eqz p2, :cond_3

    .line 1520
    const-string v5, "    "

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1505
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1524
    :cond_4
    if-nez v2, :cond_5

    .line 1525
    const-string p2, "  (nothing)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    :cond_5
    return-void
.end method

.method flush()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 447
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 448
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 449
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->flush()V

    .line 450
    return-void

    .line 448
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 693
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 694
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 695
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 699
    iget v4, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v4, p1, :cond_0

    .line 700
    goto :goto_1

    .line 702
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 703
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 704
    goto :goto_1

    .line 706
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    .line 707
    new-instance v4, Lcom/android/server/am/AppTaskImpl;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-direct {v4, v5, v3, p1}, Lcom/android/server/am/AppTaskImpl;-><init>(Lcom/android/server/am/ActivityManagerService;II)V

    .line 708
    invoke-virtual {v4}, Lcom/android/server/am/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 710
    :cond_3
    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 818
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 819
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 822
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 823
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    .line 824
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v3

    if-nez v3, :cond_2

    .line 826
    :cond_1
    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    :cond_3
    return-void
.end method

.method getRawTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .locals 6

    .line 843
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 844
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 845
    nop

    .line 846
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 847
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 848
    invoke-direct {p0, v4}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 849
    add-int/lit8 v3, v3, 0x1

    .line 850
    invoke-direct {p0, v4, v3}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 851
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 846
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    :cond_1
    return-object v0
.end method

.method getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 718
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 720
    const/4 v0, 0x1

    goto :goto_0

    .line 718
    :cond_0
    nop

    .line 720
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x4

    invoke-virtual {v2, p5, v3}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 721
    const-string p1, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is still locked. Cannot load recents"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1

    .line 724
    :cond_1
    invoke-virtual {p0, p5}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V

    .line 726
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, p5}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v2

    .line 727
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 729
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 730
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 731
    nop

    .line 732
    move v4, v1

    :goto_1
    if-ge v1, v3, :cond_c

    .line 733
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 735
    invoke-direct {p0, v5}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 736
    add-int/lit8 v4, v4, 0x1

    .line 737
    invoke-direct {p0, v5, v4}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 749
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, p1, :cond_2

    .line 750
    goto :goto_2

    .line 754
    :cond_2
    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 756
    goto :goto_2

    .line 759
    :cond_3
    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eqz v6, :cond_4

    .line 761
    goto :goto_2

    .line 770
    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 773
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-nez v6, :cond_b

    .line 775
    :cond_5
    if-nez p3, :cond_6

    .line 778
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, v5, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v6, p6, :cond_6

    .line 780
    goto :goto_2

    .line 783
    :cond_6
    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_7

    .line 787
    goto :goto_2

    .line 789
    :cond_7
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_8

    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v6, :cond_8

    .line 792
    goto :goto_2

    .line 795
    :cond_8
    iget-boolean v6, v5, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    if-nez v6, :cond_9

    .line 799
    goto :goto_2

    .line 802
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    .line 803
    if-nez p4, :cond_a

    .line 804
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 807
    :cond_a
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 810
    :cond_c
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/am/TaskRecord;
    .locals 4

    .line 862
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 863
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 864
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 865
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    .line 866
    return-object v2

    .line 863
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .locals 1

    .line 385
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 386
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method isCallerRecents(I)Z
    .locals 1

    .line 275
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    return p1
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isRecentsComponentHomeActivity(I)Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 292
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 292
    :goto_0
    return p1
.end method

.method protected isTrimmable(Lcom/android/server/am/TaskRecord;)Z
    .locals 5

    .line 1216
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 1217
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1220
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1221
    return v1

    .line 1225
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 1226
    return v4

    .line 1230
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 1231
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    return v1
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 222
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const v0, 0x10e0066

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 225
    const v0, 0x10e005e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    .line 227
    :cond_0
    const-string/jumbo v0, "ro.recents.grid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const v0, 0x10e0065

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 230
    const v0, 0x10e005d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    .line 233
    :cond_1
    const v0, 0x10e0064

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 235
    const v0, 0x10e005c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    .line 238
    :goto_0
    const v0, 0x10e0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 240
    if-lez p1, :cond_2

    .line 241
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_1

    .line 242
    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 243
    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .locals 4

    .line 250
    const v0, 0x10401cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 257
    if-eqz p1, :cond_2

    .line 259
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_1

    .line 262
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 263
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_1
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load application info for recents component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2
    :goto_0
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    return-void

    .line 343
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 346
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 348
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_1

    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 351
    :cond_1
    goto :goto_0

    .line 353
    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading recents for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " into memory."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 356
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 359
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 360
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 362
    :cond_3
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 1

    .line 393
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 394
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    return-void

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 399
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    .line 400
    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .locals 2

    .line 525
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 526
    return-void

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_2

    .line 529
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 530
    iget v1, v0, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 528
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 534
    :cond_2
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 7

    .line 507
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    .line 508
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 509
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 510
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 511
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v3, p3, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eq v3, p2, :cond_1

    .line 514
    iput-boolean p2, v2, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 515
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 516
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v6, "suspended-package"

    invoke-virtual {v4, v5, v3, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 519
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 508
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 522
    :cond_2
    return-void
.end method

.method onSystemReadyLocked()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 434
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->startPersisting()V

    .line 435
    return-void
.end method

.method registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method remove(Lcom/android/server/am/TaskRecord;)V
    .locals 4

    .line 1021
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1022
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1023
    nop

    .line 1024
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1025
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_0

    .line 1026
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1029
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1030
    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .locals 5

    .line 537
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 538
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 539
    nop

    .line 540
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 541
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p2, :cond_0

    goto :goto_1

    .line 542
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 544
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v4, "remove-package-task"

    invoke-virtual {v3, v2, v1, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 537
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 547
    :cond_2
    return-void
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 214
    iput p1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 215
    return-void
.end method

.method setParameters(IIJ)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 207
    iput p1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 208
    iput p2, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    .line 209
    iput-wide p3, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 210
    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unloading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 483
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeTasksForUserLocked(I)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 486
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->unloadUserDataFromMemory(I)V

    .line 487
    return-void
.end method

.method unregisterCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 459
    nop

    .line 460
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 461
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 462
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    add-int/lit8 v4, v2, 0x1

    aput v3, v0, v2

    .line 460
    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 468
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0

    .line 470
    :cond_2
    return-object v0
.end method
