.class final Lcom/android/server/am/ActiveServices$ServiceDumper;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceDumper"
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;

.field private final dumpAll:Z

.field private final dumpPackage:Ljava/lang/String;

.field private final fd:Ljava/io/FileDescriptor;

.field private final matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

.field private needSep:Z

.field private final nowReal:J

.field private printed:Z

.field private printedAnything:Z

.field private final pw:Ljava/io/PrintWriter;

.field private final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .registers 25
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 4105
    move-object/from16 v3, p7

    iput-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4092
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 4094
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    .line 4096
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4097
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4098
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4106
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    .line 4107
    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 4108
    iput-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    .line 4109
    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    .line 4110
    iput-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 4111
    new-instance v8, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    iput-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 4112
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    move/from16 v9, p5

    invoke-virtual {v8, v2, v9}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 4114
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v8}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v8

    .line 4115
    .local v8, "users":[I
    array-length v10, v8

    move v11, v4

    :goto_49
    if-ge v11, v10, :cond_93

    aget v12, v8, v11

    .line 4116
    .local v12, "user":I
    # invokes: Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-static {v1, v12}, Lcom/android/server/am/ActiveServices;->access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v13

    .line 4117
    .local v13, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v14, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-lez v14, :cond_8d

    .line 4118
    move v14, v4

    .local v14, "si":I
    :goto_5a
    iget-object v15, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_8d

    .line 4119
    iget-object v15, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ServiceRecord;

    .line 4120
    .local v15, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v1, v15, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v15, v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 4121
    goto :goto_87

    .line 4123
    :cond_75
    if-eqz v3, :cond_82

    iget-object v1, v15, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 4124
    goto :goto_87

    .line 4126
    :cond_82
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4118
    .end local v15    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_87
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x0

    goto :goto_5a

    .line 4115
    .end local v12    # "user":I
    .end local v13    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v14    # "si":I
    :cond_8d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x0

    goto :goto_49

    .line 4130
    :cond_93
    return-void
.end method

.method private dumpHeaderLocked()V
    .registers 3

    .line 4133
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4134
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 4135
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  Last ANR service:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4137
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4139
    :cond_22
    return-void
.end method

.method private dumpRemainsLocked()V
    .registers 16

    .line 4339
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_71

    .line 4340
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4341
    move v0, v1

    .local v0, "i":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6f

    .line 4342
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4343
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 4344
    goto :goto_6c

    .line 4346
    :cond_2e
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 4347
    goto :goto_6c

    .line 4349
    :cond_3f
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4350
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v4, :cond_59

    .line 4351
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 4352
    :cond_4e
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4353
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  Pending services:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4354
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4356
    :cond_59
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  * Pending "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4357
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "    "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4341
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 4359
    .end local v0    # "i":I
    :cond_6f
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4362
    :cond_71
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e0

    .line 4363
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4364
    move v0, v1

    .restart local v0    # "i":I
    :goto_7e
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_de

    .line 4365
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4366
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_9d

    .line 4367
    goto :goto_db

    .line 4369
    :cond_9d
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v4, :cond_ae

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ae

    .line 4370
    goto :goto_db

    .line 4372
    :cond_ae
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4373
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v4, :cond_c8

    .line 4374
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v4, :cond_bd

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 4375
    :cond_bd
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4376
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  Restarting services:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4377
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4379
    :cond_c8
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  * Restarting "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4380
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "    "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4364
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 4382
    .end local v0    # "i":I
    :cond_de
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4385
    :cond_e0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14f

    .line 4386
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4387
    move v0, v1

    .restart local v0    # "i":I
    :goto_ed
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_14d

    .line 4388
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4389
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_10c

    .line 4390
    goto :goto_14a

    .line 4392
    :cond_10c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v4, :cond_11d

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11d

    .line 4393
    goto :goto_14a

    .line 4395
    :cond_11d
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4396
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v4, :cond_137

    .line 4397
    iget-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v4, :cond_12c

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 4398
    :cond_12c
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4399
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  Destroying services:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4400
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4402
    :cond_137
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "  * Destroy "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4403
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v5, "    "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4387
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_14a
    add-int/lit8 v0, v0, 0x1

    goto :goto_ed

    .line 4405
    .end local v0    # "i":I
    :cond_14d
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4408
    :cond_14f
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v0, :cond_1d9

    .line 4409
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4410
    move v0, v1

    .local v0, "ic":I
    :goto_156
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1d9

    .line 4411
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4412
    .local v3, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move v4, v1

    .local v4, "i":I
    :goto_16b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1d5

    .line 4413
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 4414
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_18a

    .line 4415
    goto :goto_1d2

    .line 4417
    :cond_18a
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_1a5

    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_1d2

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4418
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a5

    .line 4419
    goto :goto_1d2

    .line 4421
    :cond_1a5
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4422
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_1bf

    .line 4423
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v6, :cond_1b4

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 4424
    :cond_1b4
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4425
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  Connection bindings to services:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4426
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4428
    :cond_1bf
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "  * "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4429
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v7, "    "

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4412
    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1d2
    :goto_1d2
    add-int/lit8 v4, v4, 0x1

    goto :goto_16b

    .line 4410
    .end local v3    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_1d5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_156

    .line 4434
    .end local v0    # "ic":I
    :cond_1d9
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    if-eqz v0, :cond_322

    .line 4435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4436
    .local v3, "nowElapsed":J
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4437
    .local v0, "users":[I
    array-length v5, v0

    :goto_1ee
    if-ge v1, v5, :cond_322

    aget v6, v0, v1

    .line 4438
    .local v6, "user":I
    const/4 v7, 0x0

    .line 4439
    .local v7, "printedUser":Z
    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v8, v8, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4440
    .local v8, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v8, :cond_201

    .line 4441
    goto/16 :goto_31e

    .line 4443
    :cond_201
    iget-object v9, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "i":I
    :goto_208
    if-ltz v9, :cond_2ec

    .line 4444
    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 4445
    .local v10, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v11, :cond_222

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_222

    .line 4446
    goto/16 :goto_2e8

    .line 4448
    :cond_222
    if-nez v7, :cond_245

    .line 4449
    const/4 v7, 0x1

    .line 4450
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4451
    iget-boolean v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v11, :cond_230

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    .line 4452
    :cond_230
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4453
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "Active foreground apps - user "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4454
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4455
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4457
    :cond_245
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4458
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 4459
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4460
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4461
    iget-object v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    if-eqz v11, :cond_271

    .line 4462
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "    mLabel="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4463
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4465
    :cond_271
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "    mNumActive="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4466
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 4467
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, " mAppOnTop="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4468
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 4469
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, " mShownWhileTop="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4470
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 4471
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, " mShownWhileScreenOn="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4472
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v12, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 4473
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "    mStartTime="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4474
    iget-wide v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    sub-long/2addr v11, v3

    iget-object v13, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v11, v12, v13}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4475
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, " mStartVisibleTime="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4476
    iget-wide v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    sub-long/2addr v11, v3

    iget-object v13, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v11, v12, v13}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4477
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    .line 4478
    iget-wide v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_2e8

    .line 4479
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v12, "    mEndTime="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4480
    iget-wide v11, v10, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    sub-long/2addr v11, v3

    iget-object v13, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v11, v12, v13}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4481
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    .line 4443
    .end local v10    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_2e8
    :goto_2e8
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_208

    .line 4484
    .end local v9    # "i":I
    :cond_2ec
    invoke-virtual {v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->hasMessagesOrCallbacks()Z

    move-result v9

    if-eqz v9, :cond_31e

    .line 4485
    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v9, :cond_2fb

    .line 4486
    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 4488
    :cond_2fb
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4489
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4490
    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v10, "  Handler - user "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4491
    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4492
    iget-object v9, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4493
    new-instance v9, Landroid/util/PrintWriterPrinter;

    iget-object v10, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-direct {v9, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v10, "    "

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->dumpMine(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4437
    .end local v6    # "user":I
    .end local v7    # "printedUser":Z
    .end local v8    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_31e
    :goto_31e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1ee

    .line 4498
    .end local v0    # "users":[I
    .end local v3    # "nowElapsed":J
    :cond_322
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-nez v0, :cond_32d

    .line 4499
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  (nothing)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4501
    :cond_32d
    return-void
.end method

.method private dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4267
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4268
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_5

    .line 4269
    return-void

    .line 4271
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 4272
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-nez v1, :cond_a

    .line 4273
    return-void

    .line 4275
    :cond_a
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v3, "    Client:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4276
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 4278
    :try_start_16
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_39

    .line 4280
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1b
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    invoke-interface {v1, v3, p1, v4}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 4281
    const-string v3, "      "

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 4284
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_34

    .line 4286
    :try_start_30
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 4287
    goto :goto_59

    .line 4286
    :catchall_34
    move-exception v3

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v3
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_39} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_39} :catch_39

    .line 4290
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_39
    move-exception v2

    .line 4291
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v4, "      Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_5a

    .line 4288
    :catch_42
    move-exception v2

    .line 4289
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Failure while dumping the service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4292
    .end local v2    # "e":Ljava/io/IOException;
    :goto_59
    nop

    .line 4293
    :goto_5a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4294
    return-void
.end method

.method private dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4233
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserHeaderLocked(I)V

    .line 4234
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "  * "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4235
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4236
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    if-eqz v0, :cond_21

    .line 4237
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    "

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    goto/16 :goto_c7

    .line 4240
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    app="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4241
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4242
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    created="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4243
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iget-wide v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4244
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, " started="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4245
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 4246
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, " connections="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4247
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4248
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_c7

    .line 4249
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v1, "    Connections:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4250
    const/4 v0, 0x0

    move v1, v0

    .line 4250
    .local v1, "conni":I
    :goto_70
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_c7

    .line 4251
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4252
    .local v2, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move v3, v0

    .line 4252
    .local v3, "i":I
    :goto_81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c4

    .line 4253
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 4254
    .local v4, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4255
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 4256
    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 4255
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4257
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4258
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 4259
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    if-eqz v5, :cond_bb

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_be

    :cond_bb
    const-string/jumbo v7, "null"

    :goto_be
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4252
    .end local v4    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 4250
    .end local v2    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 4264
    .end local v1    # "conni":I
    :cond_c7
    :goto_c7
    return-void
.end method

.method private dumpUserHeaderLocked(I)V
    .registers 6
    .param p1, "user"    # I

    .line 4219
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    .line 4220
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v0, :cond_e

    .line 4221
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4223
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active services:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4226
    :cond_2b
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4227
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    if-eqz v0, :cond_36

    .line 4228
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4230
    :cond_36
    return-void
.end method

.method private dumpUserRemainsLocked(I)V
    .registers 11
    .param p1, "user"    # I

    .line 4297
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    # invokes: Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 4298
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4299
    const/4 v2, 0x0

    .local v2, "si":I
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "SN":I
    :goto_10
    const/4 v4, 0x1

    if-ge v2, v3, :cond_72

    .line 4300
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4301
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 4302
    goto :goto_6f

    .line 4304
    :cond_26
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v6, :cond_37

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 4305
    goto :goto_6f

    .line 4307
    :cond_37
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v6, :cond_61

    .line 4308
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v6, :cond_44

    .line 4309
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 4311
    :cond_44
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " delayed start services:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4312
    iput-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4314
    :cond_61
    iput-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4315
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, "  * Delayed start "

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4299
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4317
    .end local v2    # "si":I
    .end local v3    # "SN":I
    :cond_72
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4318
    const/4 v1, 0x0

    .local v1, "si":I
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "SN":I
    :goto_7b
    if-ge v1, v2, :cond_dc

    .line 4319
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4320
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_90

    .line 4321
    goto :goto_d9

    .line 4323
    :cond_90
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    if-eqz v5, :cond_a1

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 4324
    goto :goto_d9

    .line 4326
    :cond_a1
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    if-nez v5, :cond_cb

    .line 4327
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    if-eqz v5, :cond_ae

    .line 4328
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 4330
    :cond_ae
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " starting in background:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4331
    iput-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4333
    :cond_cb
    iput-boolean v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 4334
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    const-string v6, "  * Starting bg "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4318
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :goto_d9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 4336
    .end local v1    # "si":I
    .end local v2    # "SN":I
    :cond_dc
    return-void
.end method


# virtual methods
.method dumpLocked()V
    .registers 9

    .line 4142
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 4145
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4146
    .local v0, "users":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_60

    aget v4, v0, v3

    .line 4148
    .local v4, "user":I
    move v5, v2

    .line 4149
    .local v5, "serviceIdx":I
    :goto_15
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2c

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v6, v4, :cond_2c

    .line 4150
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 4152
    :cond_2c
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4153
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5a

    .line 4154
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4155
    :goto_38
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_53

    .line 4156
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4157
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v5, v5, 0x1

    .line 4158
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v7, v4, :cond_4f

    .line 4159
    goto :goto_53

    .line 4161
    :cond_4f
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4162
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_38

    .line 4163
    :cond_53
    :goto_53
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4166
    :cond_5a
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5d} :catch_61

    .line 4146
    .end local v4    # "user":I
    .end local v5    # "serviceIdx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 4170
    .end local v0    # "users":[I
    :cond_60
    goto :goto_69

    .line 4168
    :catch_61
    move-exception v0

    .line 4169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Exception in dumpServicesLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_69
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    .line 4173
    return-void
.end method

.method dumpWithClient()V
    .registers 9

    .line 4176
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4177
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 4178
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_b2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4181
    :try_start_f
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4182
    .local v0, "users":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_93

    aget v4, v0, v3

    .line 4184
    .local v4, "user":I
    move v5, v2

    .line 4185
    .local v5, "serviceIdx":I
    :goto_21
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_38

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v6, v4, :cond_38

    .line 4186
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 4188
    :cond_38
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4189
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7b

    .line 4190
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4191
    :goto_44
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_74

    .line 4192
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4193
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v5, v5, 0x1

    .line 4194
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v7, v4, :cond_5b

    .line 4195
    goto :goto_74

    .line 4197
    :cond_5b
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v7, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_60} :catch_94

    :try_start_60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4198
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4199
    monitor-exit v7
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_6e

    :try_start_67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4200
    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_94

    .line 4201
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_44

    .line 4199
    .restart local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v7
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4202
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_74
    :goto_74
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 4205
    :cond_7b
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_80} :catch_94

    :try_start_80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4206
    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V

    .line 4207
    monitor-exit v6
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_8d

    :try_start_87
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_94

    .line 4182
    .end local v4    # "user":I
    .end local v5    # "serviceIdx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 4207
    .restart local v4    # "user":I
    .restart local v5    # "serviceIdx":I
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit v6
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_93} :catch_94

    .line 4211
    .end local v0    # "users":[I
    .end local v4    # "user":I
    .end local v5    # "serviceIdx":I
    :cond_93
    goto :goto_9c

    .line 4209
    :catch_94
    move-exception v0

    .line 4210
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Exception in dumpServicesLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4213
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9c
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4214
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    .line 4215
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_ac

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4216
    return-void

    .line 4215
    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4178
    :catchall_b2
    move-exception v1

    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
