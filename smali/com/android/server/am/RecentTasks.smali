.class Lcom/android/server/am/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;,
        Lcom/android/server/am/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final MOVE_AFFILIATED_TASKS_TO_FRONT:Z = false

.field private static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field private static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

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

.field private static final URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;


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

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGlobalMaxNumTasks:I

.field private mHasVisibleRecentTasks:Z

.field private mLockedTasksContentObserver:Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

.field private mLockedTasksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxNumVisibleTasks:I

.field private mMinNumVisibleTasks:I

.field private mNumObservedLockedTasks:I

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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 127
    sget-object v0, Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;->INSTANCE:Lcom/android/server/am/-$$Lambda$RecentTasks$NgzE6eN0wIO1cgLW7RzciPDBTHk;

    sput-object v0, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    .line 132
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 133
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 198
    const-string v0, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/RecentTasks;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 167
    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 174
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 192
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 193
    new-instance v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 199
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    .line 200
    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    .line 216
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 217
    .local v0, "systemDir":Ljava/io/File;
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 218
    .local v1, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 219
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    .line 220
    new-instance v2, Lcom/android/server/am/TaskPersister;

    invoke-direct {v2, v0, p2, p1, p0}, Lcom/android/server/am/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 221
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 222
    const v2, 0x112007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    .line 227
    new-instance v2, Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;-><init>(Lcom/android/server/am/RecentTasks;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksContentObserver:Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

    .line 229
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v3, Lcom/android/server/am/RecentTasks$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/RecentTasks$1;-><init>(Lcom/android/server/am/RecentTasks;)V

    const-class v4, Lcom/android/server/am/RecentTasks;

    .line 235
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskPersister;Lcom/android/server/am/UserController;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "taskPersister"    # Lcom/android/server/am/TaskPersister;
    .param p3, "userController"    # Lcom/android/server/am/UserController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 167
    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 174
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 192
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 193
    new-instance v1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 199
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    .line 200
    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    .line 208
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 209
    iput-object p3, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    .line 210
    iput-object p2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 211
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/RecentTasks;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/RecentTasks;

    .line 115
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->updateLockedTaskInfoLocked()V

    return-void
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 764
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I
    .registers 20
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    .line 1502
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1503
    .local v2, "recentsCount":I
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1504
    .local v3, "intent":Landroid/content/Intent;
    const/4 v5, 0x1

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v5

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    .line 1505
    .local v6, "document":Z
    :goto_18
    iget v7, v1, Lcom/android/server/am/TaskRecord;->maxRecents:I

    sub-int/2addr v7, v5

    .line 1506
    .local v7, "maxRecents":I
    move v8, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v8, "maxRecents":I
    :goto_1d
    if-ge v7, v2, :cond_af

    .line 1507
    iget-object v9, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 1508
    .local v9, "tr":Lcom/android/server/am/TaskRecord;
    if-eq v1, v9, :cond_ae

    .line 1509
    invoke-direct {v0, v1, v9}, Lcom/android/server/am/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v10

    if-eqz v10, :cond_a9

    iget v10, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget v11, v9, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v11, :cond_37

    .line 1511
    goto/16 :goto_a9

    .line 1513
    :cond_37
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1514
    .local v10, "trIntent":Landroid/content/Intent;
    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_49

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 1515
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_49

    move v11, v5

    goto :goto_4a

    :cond_49
    const/4 v11, 0x0

    .line 1516
    .local v11, "sameAffinity":Z
    :goto_4a
    if-eqz v3, :cond_54

    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_54

    move v12, v5

    goto :goto_55

    :cond_54
    const/4 v12, 0x0

    .line 1517
    .local v12, "sameIntent":Z
    :goto_55
    const/4 v13, 0x0

    .line 1518
    .local v13, "multiTasksAllowed":Z
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v14

    .line 1519
    .local v14, "flags":I
    const/high16 v15, 0x10080000

    and-int/2addr v15, v14

    if-eqz v15, :cond_65

    const/high16 v15, 0x8000000

    and-int/2addr v15, v14

    if-eqz v15, :cond_65

    .line 1521
    const/4 v13, 0x1

    .line 1523
    :cond_65
    if-eqz v10, :cond_6f

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_6f

    move v15, v5

    goto :goto_70

    :cond_6f
    const/4 v15, 0x0

    .line 1524
    .local v15, "trIsDocument":Z
    :goto_70
    if-eqz v6, :cond_77

    if-eqz v15, :cond_77

    move/from16 v16, v5

    goto :goto_79

    :cond_77
    const/16 v16, 0x0

    .line 1525
    .local v16, "bothDocuments":Z
    :goto_79
    if-nez v11, :cond_80

    if-nez v12, :cond_80

    if-nez v16, :cond_80

    .line 1526
    goto :goto_a9

    .line 1529
    :cond_80
    if-eqz v16, :cond_a4

    .line 1531
    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_96

    iget-object v4, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_96

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1533
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    const/4 v4, 0x1

    goto :goto_97

    :cond_96
    const/4 v4, 0x0

    .line 1534
    .local v4, "sameActivity":Z
    :goto_97
    if-nez v4, :cond_9a

    .line 1537
    goto :goto_a9

    .line 1538
    :cond_9a
    if-lez v8, :cond_a3

    .line 1539
    add-int/lit8 v8, v8, -0x1

    .line 1540
    if-eqz v12, :cond_a9

    if-eqz v13, :cond_a3

    .line 1544
    goto :goto_a9

    .line 1549
    .end local v4    # "sameActivity":Z
    :cond_a3
    goto :goto_ae

    :cond_a4
    if-nez v6, :cond_a9

    if-eqz v15, :cond_ae

    .line 1551
    nop

    .line 1506
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v10    # "trIntent":Landroid/content/Intent;
    .end local v11    # "sameAffinity":Z
    .end local v12    # "sameIntent":Z
    .end local v13    # "multiTasksAllowed":Z
    .end local v14    # "flags":I
    .end local v15    # "trIsDocument":Z
    .end local v16    # "bothDocuments":Z
    :cond_a9
    :goto_a9
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1d

    .line 1554
    .restart local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_ae
    :goto_ae
    return v7

    .line 1556
    .end local v7    # "i":I
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_af
    const/4 v4, -0x1

    return v4
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .registers 15
    .param p1, "t1"    # Lcom/android/server/am/TaskRecord;
    .param p2, "t2"    # Lcom/android/server/am/TaskRecord;

    .line 1859
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    .line 1860
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    .line 1861
    .local v1, "windowingMode":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v2

    .line 1862
    .local v4, "isUndefinedType":Z
    :goto_f
    if-nez v1, :cond_13

    move v5, v3

    goto :goto_14

    :cond_13
    move v5, v2

    .line 1863
    .local v5, "isUndefinedMode":Z
    :goto_14
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    .line 1864
    .local v6, "otherActivityType":I
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v7

    .line 1865
    .local v7, "otherWindowingMode":I
    if-nez v6, :cond_20

    move v8, v3

    goto :goto_21

    :cond_20
    move v8, v2

    .line 1866
    .local v8, "isOtherUndefinedType":Z
    :goto_21
    if-nez v7, :cond_25

    move v9, v3

    goto :goto_26

    :cond_25
    move v9, v2

    .line 1870
    .local v9, "isOtherUndefinedMode":Z
    :goto_26
    if-eq v0, v6, :cond_2f

    if-nez v4, :cond_2f

    if-eqz v8, :cond_2d

    goto :goto_2f

    :cond_2d
    move v10, v2

    goto :goto_30

    :cond_2f
    :goto_2f
    move v10, v3

    .line 1872
    .local v10, "isCompatibleType":Z
    :goto_30
    if-eq v1, v7, :cond_39

    if-nez v5, :cond_39

    if-eqz v9, :cond_37

    goto :goto_39

    :cond_37
    move v11, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v11, v3

    .line 1875
    .local v11, "isCompatibleMode":Z
    :goto_3a
    if-eqz v10, :cond_40

    if-eqz v11, :cond_40

    move v2, v3

    nop

    :cond_40
    return v2
.end method

.method private isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "quietProfileUserIds"    # Landroid/util/SparseBooleanArray;

    .line 1280
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_25

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isActiveRecentTask: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " globalMax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_25
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 1285
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_39

    const-string v0, "ActivityManager"

    const-string v2, "\tisQuietProfileTask=true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_39
    return v1

    .line 1289
    :cond_3a
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_73

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, v2, :cond_73

    .line 1291
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1292
    .local v0, "affiliatedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_73

    .line 1293
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 1294
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v2, :cond_72

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\taffiliatedWithTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_72
    return v1

    .line 1302
    .end local v0    # "affiliatedTask":Lcom/android/server/am/TaskRecord;
    :cond_73
    const/4 v0, 0x1

    return v0
.end method

.method private isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "numVisibleTasks"    # I

    .line 1370
    nop

    .line 1371
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    .line 1373
    .local v0, "isExcludeFromRecents":Z
    :goto_13
    if-eqz v0, :cond_25

    .line 1374
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v1, :cond_20

    const-string v1, "ActivityManager"

    const-string v4, "\texcludeFromRecents=true"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_20
    if-ne p2, v3, :cond_24

    move v2, v3

    nop

    :cond_24
    return v2

    .line 1380
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_40

    .line 1382
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    .line 1383
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/am/RecentTasks;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksContentObserver:Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1387
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->updateLockedTaskInfoLocked()V

    .line 1392
    :cond_40
    :try_start_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1394
    .local v1, "task_UserInfo":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/am/RecentTasks;->isRecentTaskLocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1397
    iget v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_67} :catch_69

    .line 1398
    return v3

    .line 1402
    .end local v1    # "task_UserInfo":Ljava/lang/String;
    :cond_68
    goto :goto_75

    .line 1400
    :catch_69
    move-exception v1

    .line 1401
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    const-string v5, "Exception while checking recent task locked state"

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1407
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_75
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz v1, :cond_81

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    iget v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    add-int/2addr v1, v4

    if-gt p2, v1, :cond_81

    .line 1415
    return v3

    .line 1418
    :cond_81
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz v1, :cond_8f

    .line 1422
    iget v1, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    iget v4, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    add-int/2addr v1, v4

    if-gt p2, v1, :cond_8e

    move v2, v3

    nop

    :cond_8e
    return v2

    .line 1430
    :cond_8f
    iget-wide v4, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_a2

    .line 1433
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_a2

    .line 1434
    return v3

    .line 1438
    :cond_a2
    return v2
.end method

.method private isRecentTaskLocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "task_user"    # Ljava/lang/String;

    .line 1444
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_1b

    .line 1445
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "task_user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1309
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_6d

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisibleRecentTask: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " minVis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " maxVis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " inactiveDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " activityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intentFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1309
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_6d
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_d4

    goto :goto_85

    .line 1325
    :pswitch_76
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_85

    .line 1328
    return v1

    .line 1321
    :pswitch_84
    return v1

    .line 1333
    :cond_85
    :goto_85
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_de

    goto :goto_c3

    .line 1338
    :pswitch_8d
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1342
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v2, :cond_b9

    .line 1343
    if-eqz v0, :cond_b2

    .line 1344
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ttop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 1346
    :cond_b2
    const-string v2, "ActivityManager"

    const-string v3, "\ttask.getStack() is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_b9
    :goto_b9
    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne v2, p1, :cond_c3

    .line 1353
    return v1

    .line 1335
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :pswitch_c2
    return v1

    .line 1358
    :cond_c3
    :goto_c3
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/LockTaskController;->getRootTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_d0

    .line 1359
    return v1

    .line 1362
    :cond_d0
    const/4 v0, 0x1

    return v0

    nop

    nop

    :pswitch_data_d4
    .packed-switch 0x2
        :pswitch_84
        :pswitch_84
        :pswitch_76
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x2
        :pswitch_c2
        :pswitch_8d
    .end packed-switch
.end method

.method static synthetic lambda$static$0(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 4
    .param p0, "lhs"    # Lcom/android/server/am/TaskRecord;
    .param p1, "rhs"    # Lcom/android/server/am/TaskRecord;

    .line 128
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 446
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    .line 447
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded persisted task ids for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_29
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .registers 15
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    .line 1633
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1634
    .local v0, "recentsCount":I
    move-object v1, p1

    .line 1635
    .local v1, "top":Lcom/android/server/am/TaskRecord;
    move-object v2, v1

    move v1, p2

    .line 1636
    .local v1, "topIndex":I
    .local v2, "top":Lcom/android/server/am/TaskRecord;
    :goto_9
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_14

    if-lez v1, :cond_14

    .line 1637
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1638
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1640
    :cond_14
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_36

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: adding affilliates starting at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from intial "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_36
    iget v3, v2, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_40

    move v3, v6

    goto :goto_41

    :cond_40
    move v3, v5

    .line 1644
    .local v3, "sane":Z
    :goto_41
    move v4, v1

    .line 1645
    .local v4, "endIndex":I
    move v7, v4

    move-object v4, v2

    .line 1646
    .local v4, "prev":Lcom/android/server/am/TaskRecord;
    .local v7, "endIndex":I
    :goto_44
    if-ge v7, v0, :cond_1d3

    .line 1647
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1648
    .local v8, "cur":Lcom/android/server/am/TaskRecord;
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_70

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRecent: looking at next chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_70
    const/4 v9, -0x1

    if-ne v8, v2, :cond_9c

    .line 1652
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_7b

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v10, v9, :cond_a8

    .line 1653
    :cond_7b
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": first task has next affiliate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v3, 0x0

    .line 1656
    goto/16 :goto_1d3

    .line 1660
    :cond_9c
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v10, v4, :cond_18f

    iget v10, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v11, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v10, v11, :cond_a8

    goto/16 :goto_18f

    .line 1671
    :cond_a8
    iget v10, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v10, v9, :cond_f5

    .line 1673
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_d9

    .line 1674
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": last task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has previous affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const/4 v3, 0x0

    .line 1679
    :cond_d9
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_1d3

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRecent: end of chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d3

    .line 1683
    :cond_f5
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_12e

    .line 1684
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has previous affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " but should be id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const/4 v3, 0x0

    .line 1689
    goto/16 :goto_1d3

    .line 1692
    :cond_12e
    iget v9, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v10, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v9, v10, :cond_168

    .line 1693
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has affiliated id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " but should be "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/4 v3, 0x0

    .line 1698
    goto :goto_1d3

    .line 1700
    :cond_168
    move-object v4, v8

    .line 1701
    add-int/lit8 v7, v7, 0x1

    .line 1702
    if-lt v7, v0, :cond_18d

    .line 1703
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain ran off index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": last task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v3, 0x0

    .line 1706
    goto :goto_1d3

    .line 1708
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_18d
    goto/16 :goto_44

    .line 1662
    .restart local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_18f
    :goto_18f
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad chain @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": middle task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has bad next affiliate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/4 v3, 0x0

    .line 1668
    nop

    .line 1709
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_1d3
    :goto_1d3
    if-eqz v3, :cond_1fe

    .line 1710
    if-ge v7, p2, :cond_1fe

    .line 1711
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": did not extend to task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v3, 0x0

    .line 1716
    :cond_1fe
    if-eqz v3, :cond_264

    .line 1719
    move v5, v1

    .local v5, "i":I
    :goto_201
    if-gt v5, v7, :cond_241

    .line 1720
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_22f

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: moving affiliated "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_22f
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1723
    .restart local v8    # "cur":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v10, v5, v1

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1719
    .end local v8    # "cur":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_201

    .line 1725
    .end local v5    # "i":I
    :cond_241
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_263

    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRecent: done moving tasks  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_263
    return v6

    .line 1731
    :cond_264
    return v5
.end method

.method private notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 399
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "wasTrimmed"    # Z

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 405
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/server/am/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "lockedStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3c

    .line 269
    :cond_e
    :try_start_e
    const-string v1, "\\}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "keys":[Ljava/lang/String;
    if-eqz v1, :cond_2e

    array-length v2, v1

    if-lez v2, :cond_2e

    .line 271
    const/4 v2, 0x0

    .line 271
    .local v2, "i":I
    :goto_1a
    array-length v3, v1

    if-ge v2, v3, :cond_2e

    .line 273
    aget-object v3, v1, v2

    const-string/jumbo v4, "{"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_2f

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 278
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2e
    goto :goto_3b

    .line 276
    :catch_2f
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception while parsing recent task locked info"

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3b
    return-object v0

    .line 264
    :cond_3c
    :goto_3c
    return-object v0
.end method

.method private processNextAffiliateChainLocked(I)I
    .registers 15
    .param p1, "start"    # I

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 1562
    .local v0, "startTask":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 1565
    .local v1, "affiliateId":I
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_1c

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_1c

    .line 1570
    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1571
    add-int/lit8 v2, p1, 0x1

    return v2

    .line 1575
    :cond_1c
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1576
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_28
    if-lt v2, p1, :cond_43

    .line 1577
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1578
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v4, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v5, v1, :cond_40

    .line 1579
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1580
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 1586
    .end local v2    # "i":I
    :cond_43
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/am/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1590
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1591
    .local v2, "first":Lcom/android/server/am/TaskRecord;
    iput-boolean v3, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1592
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_78

    .line 1593
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link error 1 first.next="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-virtual {v2, v6}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1595
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1598
    :cond_78
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1599
    .local v5, "tmpSize":I
    move v7, v4

    .local v7, "i":I
    :goto_7f
    add-int/lit8 v8, v5, -0x1

    if-ge v7, v8, :cond_fe

    .line 1600
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1601
    .local v8, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 1602
    .local v9, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v10, v9, :cond_c7

    .line 1603
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 2 next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1606
    invoke-virtual {p0, v8, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1608
    :cond_c7
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v10, v8, :cond_f9

    .line 1609
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 3 prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-virtual {v9, v8}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1612
    invoke-virtual {p0, v9, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1614
    :cond_f9
    iput-boolean v3, v9, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1599
    .end local v8    # "next":Lcom/android/server/am/TaskRecord;
    .end local v9    # "prev":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    .line 1617
    .end local v7    # "i":I
    :cond_fe
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 1618
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_12a

    .line 1619
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 4 last.prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-virtual {v3, v6}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1621
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1625
    :cond_12a
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1626
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1629
    add-int v4, p1, v5

    return v4
.end method

.method private removeForAddTask(Lcom/android/server/am/TaskRecord;)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1478
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/am/TaskRecord;)I

    move-result v0

    .line 1479
    .local v0, "removeIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1481
    return-void

    .line 1487
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1488
    .local v1, "removedTask":Lcom/android/server/am/TaskRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v2, :cond_2b

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove task in removeForAddTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_2b
    const/4 v2, 0x0

    if-eq v1, p1, :cond_53

    .line 1490
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1491
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_53

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trimming task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for addition of task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_53
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1495
    return-void
.end method

.method private removeTasksForUserLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 570
    if-gtz p1, :cond_19

    .line 571
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove recent task on user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 575
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 575
    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_60

    .line 576
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 577
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_5d

    .line 578
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_52

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove RecentTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when finishing user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_52
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 575
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 583
    .end local v0    # "i":I
    :cond_60
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 506
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 507
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private syncPersistentTaskIdsLocked()V
    .registers 7

    .line 482
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 483
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 484
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 487
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 482
    .end local v2    # "userId":I
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 490
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_2d
    if-ltz v0, :cond_8f

    .line 491
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 492
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 495
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7d

    .line 496
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

    .line 498
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    :cond_7d
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 490
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 503
    .end local v0    # "i":I
    :cond_8f
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .registers 13

    .line 1153
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1158
    .local v0, "recentsCount":I
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 1160
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    .line 1161
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/RecentTasks;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksContentObserver:Lcom/android/server/am/RecentTasks$LockedTasksContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1165
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->updateLockedTaskInfoLocked()V

    .line 1169
    :cond_22
    const/4 v1, 0x0

    .line 1170
    .local v1, "lockedRecentsCount":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    monitor-enter v3

    .line 1171
    :try_start_26
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    .line 1172
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_1d1

    .line 1173
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v3, :cond_51

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trimInactiveRecentTasks recentsCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lockedRecentsCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_51
    :goto_51
    iget v3, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    add-int/2addr v3, v1

    const/4 v4, 0x1

    if-le v0, v3, :cond_e4

    .line 1186
    :try_start_57
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 1187
    .local v3, "tr_current":Lcom/android/server/am/TaskRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1189
    .local v5, "task_UserInfo":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/am/RecentTasks;->isRecentTaskLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 1192
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v6, :cond_9d

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Don\'t trim locked task while checking max ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_9d} :catch_a3

    .line 1193
    :cond_9d
    add-int/lit8 v0, v0, -0x1

    .line 1194
    add-int/lit8 v1, v1, -0x1

    .line 1195
    goto :goto_51

    .line 1199
    .end local v3    # "tr_current":Lcom/android/server/am/TaskRecord;
    .end local v5    # "task_UserInfo":Ljava/lang/String;
    :cond_a2
    goto :goto_af

    .line 1197
    :catch_a3
    move-exception v3

    .line 1198
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    const-string v6, "Exception while checking recent task locked state"

    invoke-virtual {v3}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1201
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_af
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 1202
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1203
    add-int/lit8 v0, v0, -0x1

    .line 1204
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v4, :cond_e2

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming over max-recents task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " max="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_e2
    goto/16 :goto_51

    .line 1209
    :cond_e4
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v3

    .line 1210
    .local v3, "profileUserIds":[I
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1211
    array-length v5, v3

    move v6, v2

    :goto_f1
    if-ge v6, v5, :cond_139

    aget v7, v3, v6

    .line 1212
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v8, v7}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 1213
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_10e

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_10e

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_10e

    .line 1214
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1216
    :cond_10e
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v9, :cond_136

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " quiet="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    .line 1217
    invoke-virtual {v11, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1216
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_136
    add-int/lit8 v6, v6, 0x1

    goto :goto_f1

    .line 1221
    :cond_139
    const/4 v5, 0x0

    .line 1225
    .local v5, "numVisibleTasks":I
    iput v2, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    .line 1227
    move v6, v5

    move v5, v2

    .line 1227
    .local v5, "i":I
    .local v6, "numVisibleTasks":I
    :goto_13e
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1d0

    .line 1228
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 1230
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v7, v8}, Lcom/android/server/am/RecentTasks;->isActiveRecentTask(Lcom/android/server/am/TaskRecord;Landroid/util/SparseBooleanArray;)Z

    move-result v8

    if-eqz v8, :cond_193

    .line 1231
    iget-boolean v8, p0, Lcom/android/server/am/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v8, :cond_15d

    .line 1233
    add-int/lit8 v5, v5, 0x1

    .line 1234
    goto :goto_13e

    .line 1237
    :cond_15d
    invoke-direct {p0, v7}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-nez v8, :cond_166

    .line 1239
    add-int/lit8 v5, v5, 0x1

    .line 1240
    goto :goto_13e

    .line 1242
    :cond_166
    add-int/lit8 v6, v6, 0x1

    .line 1243
    invoke-direct {p0, v7, v6}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-nez v8, :cond_190

    invoke-virtual {p0, v7}, Lcom/android/server/am/RecentTasks;->isTrimmable(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-nez v8, :cond_175

    goto :goto_190

    .line 1250
    :cond_175
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v8, :cond_1ad

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trimming out-of-range visible task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ad

    .line 1245
    :cond_190
    :goto_190
    add-int/lit8 v5, v5, 0x1

    .line 1246
    goto :goto_13e

    .line 1256
    :cond_193
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v8, :cond_1ad

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trimming inactive task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_1ad
    :goto_1ad
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1267
    nop

    .line 1268
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_1c2

    move v8, v4

    goto :goto_1c3

    :cond_1c2
    move v8, v2

    .line 1270
    .local v8, "isExcludeFromRecents":Z
    :goto_1c3
    if-nez v8, :cond_1c7

    move v9, v4

    goto :goto_1c8

    :cond_1c7
    move v9, v2

    :goto_1c8
    invoke-direct {p0, v7, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1272
    invoke-virtual {p0, v7, v2}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1273
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "isExcludeFromRecents":Z
    goto/16 :goto_13e

    .line 1274
    .end local v5    # "i":I
    :cond_1d0
    return-void

    .line 1172
    .end local v3    # "profileUserIds":[I
    .end local v6    # "numVisibleTasks":I
    :catchall_1d1
    move-exception v2

    :try_start_1d2
    monitor-exit v3
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d1

    throw v2
.end method

.method private updateLockedTaskInfoLocked()V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    .line 253
    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "lockedStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    monitor-enter v1

    .line 257
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/am/RecentTasks;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    .line 258
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v2
.end method


# virtual methods
.method add(Lcom/android/server/am/TaskRecord;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 965
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_1a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_1a
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2e

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v1, :cond_2c

    goto :goto_2e

    :cond_2c
    move v0, v3

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v0, v2

    .line 971
    .local v0, "isAffiliated":Z
    :goto_2f
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 975
    .local v1, "recentsCount":I
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_54

    .line 976
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_53

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: not adding voice interaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_53
    return-void

    .line 981
    :cond_54
    if-nez v0, :cond_93

    if-lez v1, :cond_93

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_93

    .line 982
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_7a

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRecent: already at top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_7a
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;)Z

    .line 990
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 991
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    .line 995
    :cond_92
    return-void

    .line 999
    :cond_93
    if-eqz v0, :cond_d2

    if-lez v1, :cond_d2

    iget-boolean v4, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_d2

    iget v4, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 1000
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v4, v5, :cond_d2

    .line 1001
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_d1

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: affiliated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at top when adding "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_d1
    return-void

    .line 1006
    :cond_d2
    const/4 v4, 0x0

    .line 1010
    .local v4, "needAffiliationFix":Z
    iget-boolean v5, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v5, :cond_13f

    .line 1011
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1012
    .local v5, "taskIndex":I
    if-ltz v5, :cond_128

    .line 1013
    nop

    .line 1015
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1016
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1017
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1018
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_10f

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRecent: moving to top "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_10f
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;)Z

    .line 1027
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    if-eqz v2, :cond_127

    .line 1028
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    .line 1031
    :cond_127
    return-void

    .line 1044
    :cond_128
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task with inRecent not in recents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v4, 0x1

    .line 1049
    .end local v5    # "taskIndex":I
    :cond_13f
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_159

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: trimming tasks for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_159
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeForAddTask(Lcom/android/server/am/TaskRecord;)V

    .line 1052
    iput-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1053
    if-eqz v0, :cond_1ea

    if-eqz v4, :cond_164

    goto/16 :goto_1ea

    .line 1070
    :cond_164
    if-eqz v0, :cond_224

    .line 1073
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1074
    .local v2, "other":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_16c

    .line 1075
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1077
    :cond_16c
    if-eqz v2, :cond_1ce

    .line 1078
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1079
    .local v3, "otherIndex":I
    if-ltz v3, :cond_1b1

    .line 1082
    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_17d

    .line 1085
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "taskIndex":I
    goto :goto_17e

    .line 1089
    .end local v5    # "taskIndex":I
    :cond_17d
    move v5, v3

    .line 1091
    .restart local v5    # "taskIndex":I
    :goto_17e
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_1a0

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRecent: new affiliated task added at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_1a0
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1094
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 1097
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_1af

    .line 1099
    return-void

    .line 1104
    :cond_1af
    const/4 v4, 0x1

    .line 1105
    .end local v5    # "taskIndex":I
    goto :goto_1cd

    .line 1106
    :cond_1b1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_1cb

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRecent: couldn\'t find other affiliation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_1cb
    const/4 v3, 0x1

    .line 1110
    .end local v4    # "needAffiliationFix":Z
    .local v3, "needAffiliationFix":Z
    move v4, v3

    .end local v3    # "needAffiliationFix":Z
    .restart local v4    # "needAffiliationFix":Z
    :goto_1cd
    goto :goto_224

    .line 1111
    :cond_1ce
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_1e8

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRecent: adding affiliated task without next/prev:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_1e8
    const/4 v4, 0x1

    .end local v2    # "other":Lcom/android/server/am/TaskRecord;
    goto :goto_224

    .line 1056
    :cond_1ea
    :goto_1ea
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1057
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->notifyTaskAdded(Lcom/android/server/am/TaskRecord;)V

    .line 1058
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_20c

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRecent: adding "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_20c
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;)Z

    .line 1066
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    if-eqz v2, :cond_224

    .line 1067
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    .line 1117
    :cond_224
    :goto_224
    if-eqz v4, :cond_236

    .line 1118
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_231

    const-string v2, "ActivityManager"

    const-string v3, "addRecent: regrouping affiliations"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_231
    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 1123
    :cond_236
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->trimInactiveRecentTasks()V

    .line 1124
    return-void
.end method

.method addToBottom(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1133
    const/4 v0, 0x0

    return v0

    .line 1136
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1137
    const/4 v0, 0x1

    return v0
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 630
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_52

    .line 631
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 632
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_1a

    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, p3, :cond_1a

    .line 633
    goto :goto_4f

    .line 636
    :cond_1a
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_25

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 637
    .local v3, "cn":Landroid/content/ComponentName;
    :goto_26
    const/4 v4, 0x0

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    if-eqz p2, :cond_3f

    .line 638
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_3f
    move v5, v1

    goto :goto_42

    :cond_41
    move v5, v4

    .line 639
    .local v5, "sameComponent":Z
    :goto_42
    if-eqz v5, :cond_4f

    .line 640
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string v8, "disabled-package"

    invoke-virtual {v6, v7, v4, v1, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 630
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "sameComponent":Z
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 644
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method cleanupLocked(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 652
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 653
    .local v0, "recentsCount":I
    if-nez v0, :cond_9

    .line 656
    return-void

    .line 660
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 661
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 663
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 664
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_187

    .line 665
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 666
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2c

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p1, :cond_2c

    .line 668
    goto/16 :goto_183

    .line 670
    :cond_2c
    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_57

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_57

    .line 672
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 673
    invoke-direct {p0, v3, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 674
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing auto-remove without activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    goto/16 :goto_183

    .line 678
    :cond_57
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_183

    .line 679
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 680
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_81

    .line 685
    :try_start_67
    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const v7, 0x10000400

    invoke-interface {v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_70} :catch_7e

    move-object v4, v6

    .line 691
    nop

    .line 692
    if-nez v4, :cond_76

    .line 693
    sget-object v4, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    .line 695
    :cond_76
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 688
    :catch_7e
    move-exception v5

    .line 690
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_183

    .line 697
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_81
    :goto_81
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const/high16 v7, 0x800000

    if-ne v4, v6, :cond_104

    .line 701
    iget-object v6, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 702
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 703
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_b8

    .line 705
    :try_start_97
    iget-object v8, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-interface {v1, v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_a3} :catch_b5

    move-object v6, v8

    .line 710
    nop

    .line 711
    if-nez v6, :cond_a9

    .line 712
    sget-object v6, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    .line 714
    :cond_a9
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b8

    .line 707
    :catch_b5
    move-exception v5

    .line 709
    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_183

    .line 716
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_b8
    :goto_b8
    sget-object v8, Lcom/android/server/am/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v6, v8, :cond_e4

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-nez v7, :cond_c2

    goto :goto_e4

    .line 725
    :cond_c2
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v7, :cond_e0

    iget-boolean v7, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v7, :cond_e0

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making recent unavailable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_e0
    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 729
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_183

    .line 719
    .restart local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_e4
    :goto_e4
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 720
    invoke-direct {p0, v3, v5}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 721
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing no longer valid recent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    goto/16 :goto_183

    .line 730
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_104
    iget-boolean v6, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_138

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_138

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v7

    if-nez v6, :cond_116

    goto :goto_138

    .line 742
    :cond_116
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_134

    iget-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v5, :cond_134

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making recent available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_134
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_183

    .line 733
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_138
    :goto_138
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_181

    iget-boolean v6, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v6, :cond_181

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Making recent unavailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 738
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 733
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_181
    iput-boolean v5, v3, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 664
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_183
    :goto_183
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_19

    .line 751
    .end local v2    # "i":I
    :cond_187
    const/4 v2, 0x0

    .line 752
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 753
    :goto_18e
    if-ge v2, v0, :cond_195

    .line 754
    invoke-direct {p0, v2}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v2

    goto :goto_18e

    .line 757
    :cond_195
    return-void
.end method

.method containsTaskId(II)Z
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 456
    invoke-direct {p0, p2}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 457
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 11
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .line 1785
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 1786
    .local v0, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 v1, -0x1

    goto :goto_f

    :cond_d
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_f
    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1787
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 1788
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1789
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 1790
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 1791
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    .line 1792
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    .line 1793
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 1794
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1795
    iget-wide v1, p1, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 1796
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    .line 1797
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 1798
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1799
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 1800
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 1802
    :cond_5f
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    iput-boolean v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 1803
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iput v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    .line 1804
    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1806
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V

    .line 1807
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 1808
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_90

    :cond_8f
    move-object v2, v3

    :goto_90
    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1809
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    nop

    :cond_a3
    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1813
    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z

    .line 1814
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v2, :cond_15f

    .line 1815
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 1816
    const-string v2, ""

    .line 1817
    .local v2, "topPackageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1818
    .local v3, "topUid":I
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    if-eqz v4, :cond_d1

    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_d1

    .line 1819
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1820
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTmpReport:Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_df

    .line 1822
    :cond_d1
    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 1823
    .local v4, "comp":Landroid/content/ComponentName;
    if-eqz v4, :cond_df

    .line 1824
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1825
    iget v3, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 1829
    .end local v4    # "comp":Landroid/content/ComponentName;
    :cond_df
    :goto_df
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1832
    .local v4, "ident":J
    :try_start_e3
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1834
    .local v6, "userId":I
    const-string v7, "com.oneplus.applocker"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_116

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v8, 0x3f

    .line 1835
    invoke-virtual {v7, v8, v3, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_115

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPassedPackageList:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1837
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_115

    goto :goto_116

    :cond_115
    goto :goto_117

    :cond_116
    :goto_116
    const/4 v1, 0x1

    :goto_117
    iput-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z
    :try_end_119
    .catchall {:try_start_e3 .. :try_end_119} :catchall_15a

    .line 1839
    .end local v6    # "userId":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1840
    nop

    .line 1841
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_15f

    .line 1842
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppLocker: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1843
    iget-boolean v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z

    if-eqz v7, :cond_13d

    const-string v7, " locked"

    goto :goto_13f

    :cond_13d
    const-string v7, " unlocked"

    :goto_13f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " top="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1842
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "topPackageName":Ljava/lang/String;
    .end local v3    # "topUid":I
    .end local v4    # "ident":J
    goto :goto_15f

    .line 1839
    .restart local v2    # "topPackageName":Ljava/lang/String;
    .restart local v3    # "topUid":I
    .restart local v4    # "ident":J
    :catchall_15a
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1850
    .end local v2    # "topPackageName":Ljava/lang/String;
    .end local v3    # "topUid":I
    .end local v4    # "ident":J
    :cond_15f
    :goto_15f
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 1735
    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1739
    return-void

    .line 1742
    :cond_3c
    const/4 v0, 0x0

    .line 1743
    .local v0, "printedAnything":Z
    const/4 v1, 0x0

    .line 1744
    .local v1, "printedHeader":Z
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1745
    .local v2, "size":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v0

    move v0, v3

    .line 1745
    .local v0, "i":I
    .local v1, "printedAnything":Z
    .local v4, "printedHeader":Z
    :goto_48
    if-ge v0, v2, :cond_88

    .line 1746
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 1747
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz p3, :cond_65

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_85

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1748
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    .line 1749
    goto :goto_85

    .line 1752
    :cond_65
    if-nez v4, :cond_6e

    .line 1753
    const-string v6, "  Recent tasks:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    const/4 v4, 0x1

    .line 1755
    const/4 v1, 0x1

    .line 1757
    :cond_6e
    const-string v6, "  * Recent #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1759
    if-eqz p2, :cond_85

    .line 1760
    const-string v6, "    "

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1745
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_85
    :goto_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 1764
    .end local v0    # "i":I
    :cond_88
    if-nez v1, :cond_8f

    .line 1765
    const-string v0, "  (nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    :cond_8f
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c1

    .line 1771
    const-string v0, "  Locked recent tasks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    nop

    .line 1772
    .local v3, "i":I
    :goto_9d
    move v0, v3

    .line 1772
    .end local v3    # "i":I
    .restart local v0    # "i":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c1

    .line 1773
    const-string v3, "  * Recent #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    add-int/lit8 v3, v0, 0x1

    .line 1772
    .end local v0    # "i":I
    .restart local v3    # "i":I
    goto :goto_9d

    .line 1778
    .end local v3    # "i":I
    :cond_c1
    return-void
.end method

.method flush()V
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 526
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 527
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 528
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->flush()V

    .line 529
    return-void

    .line 527
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
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

    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 773
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_47

    .line 774
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 778
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v4, p1, :cond_1b

    .line 779
    goto :goto_44

    .line 781
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 782
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 783
    goto :goto_44

    .line 785
    :cond_30
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    .line 786
    .local v5, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v6, Lcom/android/server/am/AppTaskImpl;

    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-direct {v6, v7, v8, p1}, Lcom/android/server/am/AppTaskImpl;-><init>(Lcom/android/server/am/ActivityManagerService;II)V

    .line 787
    .local v6, "taskImpl":Lcom/android/server/am/AppTaskImpl;
    invoke-virtual {v6}, Lcom/android/server/am/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v6    # "taskImpl":Lcom/android/server/am/AppTaskImpl;
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 789
    .end local v2    # "i":I
    :cond_47
    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 901
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 902
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_31

    .line 903
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 906
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 907
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v4, :cond_1d

    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v4, :cond_2e

    :cond_1d
    if-eqz v3, :cond_25

    .line 908
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 910
    :cond_25
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 902
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 916
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method getRawTasks()Ljava/util/ArrayList;
    .registers 2
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

    .line 920
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .registers 8

    .line 927
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 928
    .local v0, "res":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 929
    .local v1, "size":I
    const/4 v2, 0x0

    .line 933
    .local v2, "numVisibleTasks":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    .line 935
    nop

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_31

    .line 936
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 937
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, v4}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 938
    add-int/lit8 v2, v2, 0x1

    .line 939
    invoke-direct {p0, v4, v2}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 940
    iget v5, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 935
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 944
    .end local v3    # "i":I
    :cond_31
    return-object v0
.end method

.method getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;
    .registers 24
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "getTasksAllowed"    # Z
    .param p4, "getDetailedTasks"    # Z
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 797
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    move v2, v3

    .line 799
    .local v2, "withExcluded":Z
    :goto_c
    iget-object v4, v0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x4

    invoke-virtual {v4, v1, v5}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v4

    if-nez v4, :cond_36

    .line 800
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is still locked. Cannot load recents"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    return-object v3

    .line 803
    :cond_36
    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V

    .line 805
    iget-object v4, v0, Lcom/android/server/am/RecentTasks;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v4

    .line 806
    .local v4, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 808
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v6, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 810
    .local v6, "size":I
    const/4 v7, 0x0

    .line 814
    .local v7, "numVisibleTasks":I
    iput v3, v0, Lcom/android/server/am/RecentTasks;->mNumObservedLockedTasks:I

    .line 816
    nop

    .line 816
    .local v3, "i":I
    :goto_55
    if-ge v3, v6, :cond_182

    .line 817
    iget-object v8, v0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 819
    .local v8, "tr":Lcom/android/server/am/TaskRecord;
    invoke-direct {v0, v8}, Lcom/android/server/am/RecentTasks;->isVisibleRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v9

    if-eqz v9, :cond_178

    .line 820
    add-int/lit8 v7, v7, 0x1

    .line 821
    invoke-direct {v0, v8, v7}, Lcom/android/server/am/RecentTasks;->isInVisibleRange(Lcom/android/server/am/TaskRecord;I)Z

    move-result v9

    if-eqz v9, :cond_178

    .line 833
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v10, p1

    if-lt v9, v10, :cond_77

    .line 834
    goto/16 :goto_17a

    .line 838
    :cond_77
    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9f

    .line 839
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_17a

    const-string v9, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping, not user: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17a

    .line 843
    :cond_9f
    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eqz v9, :cond_bf

    .line 844
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v9, :cond_17a

    const-string v9, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping, activity suspended: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17a

    .line 854
    :cond_bf
    if-eqz v3, :cond_d2

    if-nez v2, :cond_d2

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v9, :cond_d2

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 857
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v11, 0x800000

    and-int/2addr v9, v11

    if-nez v9, :cond_17a

    .line 859
    :cond_d2
    if-nez p3, :cond_fc

    .line 862
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_fc

    iget v11, v8, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v12, p6

    if-eq v11, v12, :cond_fe

    .line 863
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_17c

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping, not allowed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17c

    .line 867
    :cond_fc
    move/from16 v12, p6

    :cond_fe
    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v11, :cond_123

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_123

    .line 869
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_17c

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping, auto-remove without activity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17c

    .line 873
    :cond_123
    and-int/lit8 v11, p2, 0x2

    if-eqz v11, :cond_146

    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v11, :cond_146

    .line 874
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_17c

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping, unavail real act: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17c

    .line 879
    :cond_146
    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    if-nez v11, :cond_165

    .line 881
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_17c

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping, user setup not complete: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17c

    .line 886
    :cond_165
    invoke-virtual {v0, v8}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v11

    .line 887
    .local v11, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez p4, :cond_174

    .line 888
    iget-object v14, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/4 v15, 0x0

    move-object v0, v15

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 891
    :cond_174
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    .end local v8    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v11    # "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    goto :goto_17c

    .line 816
    :cond_178
    move/from16 v10, p1

    :cond_17a
    :goto_17a
    move/from16 v12, p6

    :cond_17c
    :goto_17c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_55

    .line 894
    .end local v3    # "i":I
    :cond_182
    move/from16 v10, p1

    move/from16 v12, p6

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .registers 2

    .line 386
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/am/TaskRecord;
    .registers 6
    .param p1, "id"    # I

    .line 951
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 952
    .local v0, "recentsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 953
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 954
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_16

    .line 955
    return-object v2

    .line 952
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 958
    .end local v1    # "i":I
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 3
    .param p1, "userId"    # I

    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 465
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method isCallerRecents(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 354
    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .line 362
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isRecentsComponentHomeActivity(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 371
    .local v0, "defaultHomeActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_22

    .line 372
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 371
    :goto_23
    return v1
.end method

.method protected isTrimmable(Lcom/android/server/am/TaskRecord;)Z
    .registers 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1455
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1456
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1459
    .local v1, "homeStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 1460
    return v2

    .line 1464
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1a

    .line 1465
    return v5

    .line 1469
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 1470
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v4

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v6

    if-ge v4, v6, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v5

    :goto_2a
    return v2
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 301
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 302
    const v0, 0x10e0063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 304
    const v0, 0x10e005b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_48

    .line 306
    :cond_19
    const-string/jumbo v0, "ro.recents.grid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 307
    const v0, 0x10e0062

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 309
    const v0, 0x10e005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_48

    .line 312
    :cond_36
    const v0, 0x10e0061

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 314
    const v0, 0x10e0059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    .line 317
    :goto_48
    const v0, 0x10e0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 319
    .local v0, "sessionDurationHrs":I
    if-lez v0, :cond_59

    .line 320
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_5b

    .line 321
    :cond_59
    const-wide/16 v1, -0x1

    :goto_5b
    iput-wide v1, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 322
    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 329
    const v0, 0x1040175

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "rawRecentsComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 332
    return-void

    .line 335
    :cond_e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 336
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_49

    .line 338
    :try_start_14
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 339
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 340
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_31

    .line 341
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/am/RecentTasks;->mRecentsUid:I

    .line 342
    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_31} :catch_32

    .line 346
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_31
    goto :goto_49

    .line 344
    :catch_32
    move-exception v2

    .line 345
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load application info for recents component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_49
    :goto_49
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 416
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 418
    return-void

    .line 422
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 425
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 426
    .local v0, "preaddedTasks":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 427
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_33

    invoke-static {v2}, Lcom/android/server/am/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 428
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 430
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    goto :goto_17

    .line 432
    :cond_34
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

    .line 433
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 435
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 438
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_6b

    .line 439
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 441
    :cond_6b
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .line 472
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 473
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    :goto_8
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 475
    return-void

    .line 477
    :cond_11
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 478
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    .line 479
    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .registers 6
    .param p1, "lockTaskModeState"    # I
    .param p2, "userId"    # I

    .line 604
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 605
    return-void

    .line 607
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_b
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_2c

    .line 608
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 609
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p2, :cond_29

    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 610
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 607
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_29
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_b

    .line 613
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "userId"    # I

    .line 586
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 587
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 587
    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_45

    .line 588
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 589
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_42

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 590
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p3, :cond_42

    iget-boolean v4, v3, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eq v4, p2, :cond_42

    .line 593
    iput-boolean p2, v3, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 594
    const/4 v4, 0x0

    if-eqz p2, :cond_3f

    .line 595
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v7, "suspended-package"

    invoke-virtual {v5, v6, v4, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 598
    :cond_3f
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 587
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 601
    .end local v1    # "i":I
    :cond_45
    return-void
.end method

.method onSystemReadyLocked()V
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 513
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->startPersisting()V

    .line 514
    return-void
.end method

.method registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/am/RecentTasks$Callbacks;

    .line 390
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method remove(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/RecentTasks;->notifyTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V

    .line 1146
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v0, :cond_2d

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    :cond_2d
    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 616
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 616
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 617
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 618
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    nop

    .line 619
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "taskPackageName":Ljava/lang/String;
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, p2, :cond_24

    .line 620
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    goto :goto_37

    .line 621
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskPackageName":Ljava/lang/String;
    :cond_24
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 621
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    goto :goto_37

    .line 623
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskPackageName":Ljava/lang/String;
    :cond_2b
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v6, "remove-package-task"

    invoke-virtual {v4, v5, v1, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 616
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 626
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .registers 2
    .param p1, "globalMaxNumTasks"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 293
    iput p1, p0, Lcom/android/server/am/RecentTasks;->mGlobalMaxNumTasks:I

    .line 294
    return-void
.end method

.method setParameters(IIJ)V
    .registers 5
    .param p1, "minNumVisibleTasks"    # I
    .param p2, "maxNumVisibleTasks"    # I
    .param p3, "activeSessionDurationMs"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 286
    iput p1, p0, Lcom/android/server/am/RecentTasks;->mMinNumVisibleTasks:I

    .line 287
    iput p2, p0, Lcom/android/server/am/RecentTasks;->mMaxNumVisibleTasks:I

    .line 288
    iput-wide p3, p0, Lcom/android/server/am/RecentTasks;->mActiveTasksSessionDurationMs:J

    .line 289
    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 559
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 560
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

    .line 561
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->removeTasksForUserLocked(I)V

    .line 564
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 565
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->unloadUserDataFromMemory(I)V

    .line 566
    return-void
.end method

.method unregisterCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/am/RecentTasks$Callbacks;

    .line 394
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .registers 6

    .line 537
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 538
    .local v0, "usersWithRecentsLoaded":[I
    const/4 v1, 0x0

    .line 539
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 540
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 541
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 542
    add-int/lit8 v4, v1, 0x1

    .local v4, "len":I
    aput v3, v0, v1

    .line 539
    .end local v1    # "len":I
    .end local v3    # "userId":I
    move v1, v4

    .end local v4    # "len":I
    .restart local v1    # "len":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 545
    .end local v2    # "i":I
    :cond_23
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 547
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2

    .line 549
    :cond_2b
    return-object v0
.end method
