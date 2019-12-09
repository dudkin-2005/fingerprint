.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 13176
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 13742
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .line 13176
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .registers 20
    .param p2, "intent"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ")V"
        }
    .end annotation

    .local p1, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13345
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v3

    if-gtz v3, :cond_d

    .line 13346
    return-void

    .line 13349
    :cond_d
    iget-object v3, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 13350
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13352
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1d

    move v5, v6

    goto :goto_1e

    :cond_1d
    move v5, v7

    .line 13354
    .local v5, "privilegedApp":Z
    :goto_1e
    if-nez v5, :cond_58

    .line 13356
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_54

    .line 13357
    const-string v6, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Non-privileged app; cap priority to 0; package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " origPrio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13360
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13357
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13362
    :cond_54
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13363
    return-void

    .line 13366
    :cond_58
    if-nez v1, :cond_149

    .line 13368
    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v6

    if-eqz v6, :cond_148

    .line 13369
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDeferProtectedFilters:Z
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 13377
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mProtectedFilters:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13378
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_a5

    .line 13379
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Protected action; save for later; package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " origPrio: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13382
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13379
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13384
    :cond_a5
    return-void

    .line 13386
    :cond_a6
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_b7

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    if-nez v6, :cond_b7

    .line 13387
    const-string v6, "PackageManager"

    const-string v8, "No setup wizard; All protected intents capped to priority 0"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13390
    :cond_b7
    iget-object v6, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 13391
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_10b

    .line 13392
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found setup wizard; allow priority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13393
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " priority: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13396
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13392
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13399
    :cond_10b
    return-void

    .line 13401
    :cond_10c
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_144

    .line 13402
    const-string v6, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Protected action; cap priority to 0; package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " origPrio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13405
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13402
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13407
    :cond_144
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13408
    return-void

    .line 13412
    :cond_148
    return-void

    .line 13416
    :cond_149
    nop

    .line 13417
    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v8

    .line 13418
    .local v8, "foundActivity":Landroid/content/pm/PackageParser$Activity;
    if-nez v8, :cond_188

    .line 13420
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_184

    .line 13421
    const-string v6, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New activity; cap priority to 0; package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " activity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " origPrio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13424
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 13421
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13426
    :cond_184
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13427
    return-void

    .line 13433
    :cond_188
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13435
    .local v9, "intentListCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v10

    .line 13438
    .local v10, "foundFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 13439
    .local v11, "actionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v11, :cond_1df

    .line 13440
    new-instance v12, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;

    invoke-direct {v12, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$ActionIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    invoke-direct {v0, v9, v12, v11}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 13442
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1df

    .line 13444
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_1db

    .line 13445
    const-string v6, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Mismatched action; cap priority to 0; package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " activity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " origPrio: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13448
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 13445
    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13450
    :cond_1db
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13451
    return-void

    .line 13456
    :cond_1df
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 13457
    .local v12, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_22b

    .line 13458
    new-instance v13, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;

    invoke-direct {v13, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    invoke-direct {v0, v9, v13, v12}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 13460
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_22b

    .line 13462
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_227

    .line 13463
    const-string v6, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mismatched category; cap priority to 0; package: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " activity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " origPrio: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13466
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 13463
    invoke-static {v6, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13468
    :cond_227
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13469
    return-void

    .line 13474
    :cond_22b
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->schemesIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 13475
    .local v13, "schemesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v13, :cond_277

    .line 13476
    new-instance v14, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;

    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$SchemesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    invoke-direct {v0, v9, v14, v13}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 13478
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_277

    .line 13480
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_273

    .line 13481
    const-string v6, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mismatched scheme; cap priority to 0; package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " activity: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " origPrio: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13484
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 13481
    invoke-static {v6, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13486
    :cond_273
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13487
    return-void

    .line 13493
    :cond_277
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v14

    .line 13494
    .local v14, "authoritiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v14, :cond_2c4

    .line 13495
    new-instance v15, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;

    invoke-direct {v15, v0}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$AuthoritiesIterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

    invoke-direct {v0, v9, v15, v14}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 13498
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_2c4

    .line 13500
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_2bf

    .line 13501
    const-string v6, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mismatched authority; cap priority to 0; package: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " activity: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " origPrio: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13504
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13501
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13506
    :cond_2bf
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13507
    return-void

    .line 13512
    :cond_2c4
    const/4 v7, 0x0

    .line 13513
    .local v7, "cappedPriority":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v6

    .local v15, "i":I
    :goto_2ca
    move v6, v15

    .end local v15    # "i":I
    .local v6, "i":I
    if-ltz v6, :cond_2de

    .line 13514
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {v15}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v15

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 13513
    add-int/lit8 v15, v6, -0x1

    .end local v6    # "i":I
    .restart local v15    # "i":I
    goto :goto_2ca

    .line 13516
    .end local v15    # "i":I
    :cond_2de
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v6

    if-le v6, v7, :cond_324

    .line 13517
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    if-eqz v6, :cond_320

    .line 13518
    const-string v6, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found matching filter(s); cap priority to "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; package: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " activity: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " origPrio: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13522
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13518
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13524
    :cond_320
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 13525
    return-void

    .line 13528
    :cond_324
    return-void
.end method

.method private findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;
    .registers 7
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Landroid/content/pm/PackageParser$Activity;"
        }
    .end annotation

    .line 13224
    .local p1, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 13225
    .local v1, "sysActivity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 13226
    return-object v1

    .line 13228
    :cond_1d
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 13229
    return-object v1

    .line 13231
    :cond_2a
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v2, :cond_4a

    .line 13232
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 13233
    return-object v1

    .line 13235
    :cond_3d
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 13236
    return-object v1

    .line 13239
    .end local v1    # "sysActivity":Landroid/content/pm/PackageParser$Activity;
    :cond_4a
    goto :goto_4

    .line 13240
    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;Ljava/util/Iterator;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 13284
    .local p1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .local p2, "generator":Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;, "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator<TT;>;"
    .local p3, "searchIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 13286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 13287
    goto :goto_44

    .line 13290
    :cond_d
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13293
    .local v0, "searchAction":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 13294
    .local v1, "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 13295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13296
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    .line 13300
    .local v3, "selectionFound":Z
    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;->generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;

    move-result-object v4

    .line 13301
    .local v4, "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_26
    if-eqz v4, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 13302
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 13303
    .local v5, "intentSelection":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_3c

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 13304
    const/4 v3, 0x1

    .line 13305
    goto :goto_3d

    .line 13307
    .end local v5    # "intentSelection":Ljava/lang/Object;, "TT;"
    :cond_3c
    goto :goto_26

    .line 13311
    :cond_3d
    :goto_3d
    if-nez v3, :cond_42

    .line 13312
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 13314
    .end local v2    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "selectionFound":Z
    .end local v4    # "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_42
    goto :goto_15

    .line 13315
    .end local v0    # "searchAction":Ljava/lang/Object;, "TT;"
    .end local v1    # "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_43
    goto :goto_0

    .line 13316
    :cond_44
    :goto_44
    return-void
.end method

.method private isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .registers 5
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13319
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13320
    .local v0, "actionsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 13321
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13322
    .local v1, "filterAction":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PackageManagerService;->PROTECTED_ACTIONS:Ljava/util/Set;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3300()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 13323
    const/4 v2, 0x1

    return v2

    .line 13325
    .end local v1    # "filterAction":Ljava/lang/String;
    :cond_1e
    goto :goto_4

    .line 13326
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 9
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .line 13531
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13532
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v0, :cond_3f

    .line 13533
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13535
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2c

    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_30

    :cond_2c
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13533
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13536
    :cond_3f
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v0, :cond_5d

    .line 13537
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13538
    :cond_5d
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13539
    .local v0, "NI":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_64
    if-ge v1, v0, :cond_d1

    .line 13540
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13541
    .local v2, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string v3, "activity"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 13542
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 13543
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 13545
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_8f

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_8f

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    goto :goto_90

    :cond_8f
    const/4 v4, 0x0

    .line 13546
    .local v4, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :goto_90
    invoke-direct {p0, v4, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 13548
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :cond_93
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v3, :cond_ab

    .line 13549
    const-string v3, "PackageManager"

    const-string v4, "    IntentFilter:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13550
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "PackageManager"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 13552
    :cond_ab
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_cb

    .line 13553
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13555
    :cond_cb
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 13539
    .end local v2    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 13557
    .end local v1    # "j":I
    :cond_d1
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 3

    .line 13176
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .registers 9
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 13581
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 13582
    .local v0, "filterAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_25

    .line 13583
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13584
    .local v3, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_22

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_22

    .line 13586
    const/4 v2, 0x0

    return v2

    .line 13582
    .end local v3    # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 13589
    .end local v1    # "i":I
    :cond_25
    return v2
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4

    .line 13176
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .registers 5
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13716
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 13717
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 13716
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13718
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 13719
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 13720
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13721
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13722
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 7
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 13730
    move-object v0, p3

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 13731
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13732
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 13731
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13733
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 13734
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 13735
    const/4 v1, 0x1

    if-le p4, v1, :cond_29

    .line 13736
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13738
    :cond_29
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 13739
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 2

    .line 13176
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;
    .registers 3
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13726
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 3

    .line 13176
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .registers 8
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "userId"    # I

    .line 13599
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 13600
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 13601
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 13602
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 13603
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_25

    .line 13607
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_23

    .line 13608
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_24

    .line 13607
    :cond_23
    move v1, v2

    :goto_24
    return v1

    .line 13611
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_25
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 13176
    check-cast p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13617
    iget-object v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 13176
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .registers 3
    .param p1, "size"    # I

    .line 13594
    new-array v0, p1, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 21
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13623
    move/from16 v2, p3

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    return-object v4

    .line 13624
    :cond_10
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_21

    .line 13625
    return-object v4

    .line 13627
    :cond_21
    iget-object v3, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 13628
    .local v3, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 13629
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_2c

    .line 13630
    return-object v4

    .line 13632
    :cond_2c
    invoke-virtual {v5, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v6

    .line 13633
    .local v6, "userState":Landroid/content/pm/PackageUserState;
    iget v7, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 13634
    invoke-static {v3, v7, v6, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 13635
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v7, :cond_39

    .line 13636
    return-object v4

    .line 13638
    :cond_39
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_44

    move v8, v10

    goto :goto_45

    :cond_44
    move v8, v9

    .line 13640
    .local v8, "matchExplicitlyVisibleOnly":Z
    :goto_45
    iget v11, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    const/high16 v12, 0x1000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_4e

    move v11, v10

    goto :goto_4f

    :cond_4e
    move v11, v9

    .line 13642
    .local v11, "matchVisibleToInstantApp":Z
    :goto_4f
    if-eqz v11, :cond_61

    .line 13644
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v12

    if-eqz v12, :cond_61

    if-eqz v8, :cond_5f

    .line 13645
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isExplicitlyVisibleToInstantApp()Z

    move-result v12

    if-eqz v12, :cond_61

    :cond_5f
    move v12, v10

    goto :goto_62

    :cond_61
    move v12, v9

    .line 13646
    .local v12, "componentVisible":Z
    :goto_62
    iget v13, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    if-eqz v13, :cond_6b

    move v13, v10

    goto :goto_6c

    :cond_6b
    move v13, v9

    .line 13648
    .local v13, "matchInstantApp":Z
    :goto_6c
    if-eqz v11, :cond_75

    if-nez v12, :cond_75

    iget-boolean v14, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v14, :cond_75

    .line 13649
    return-object v4

    .line 13652
    :cond_75
    if-nez v13, :cond_7c

    iget-boolean v14, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v14, :cond_7c

    .line 13653
    return-object v4

    .line 13657
    :cond_7c
    iget-boolean v14, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v14, :cond_87

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v14

    if-eqz v14, :cond_87

    .line 13658
    return-object v4

    .line 13660
    :cond_87
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 13661
    .local v4, "res":Landroid/content/pm/ResolveInfo;
    iput-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13662
    iget v14, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v14, v14, 0x40

    if-eqz v14, :cond_96

    .line 13663
    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 13665
    :cond_96
    if-eqz v1, :cond_9e

    .line 13666
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->handleAllWebDataURI()Z

    move-result v14

    iput-boolean v14, v4, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 13668
    :cond_9e
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v14

    iput v14, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 13669
    iget-object v14, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v14, v14, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v14, v4, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 13672
    move/from16 v14, p2

    iput v14, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 13673
    iget-boolean v15, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean v15, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 13674
    iget v15, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput v15, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 13675
    iget-object v15, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v15, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 13688
    new-array v15, v10, [I

    const/16 v16, 0x1c

    aput v16, v15, v9

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    if-eqz v9, :cond_da

    .line 13689
    const/16 v9, 0x3e7

    if-eq v2, v9, :cond_d5

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->userNeedsBadging(I)Z
    invoke-static {v9, v2}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v9

    if-eqz v9, :cond_d5

    .line 13690
    iput-boolean v10, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_e9

    .line 13692
    :cond_d5
    iget v9, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v9, v4, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_e9

    .line 13695
    :cond_da
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->userNeedsBadging(I)Z
    invoke-static {v9, v2}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result v9

    if-eqz v9, :cond_e5

    .line 13696
    iput-boolean v10, v4, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_e9

    .line 13698
    :cond_e5
    iget v9, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v9, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 13702
    :goto_e9
    iget v9, v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v9, v4, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 13703
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    iput-boolean v9, v4, Landroid/content/pm/ResolveInfo;->system:Z

    .line 13704
    iget-boolean v9, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v9, v4, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 13705
    return-object v4
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4

    .line 13176
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13187
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 13188
    :cond_a
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 13189
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13180
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 13181
    :cond_a
    if-eqz p3, :cond_f

    const/high16 v0, 0x10000

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 13182
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 13196
    .local p4, "packageActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 13197
    :cond_a
    if-nez p4, :cond_d

    .line 13198
    return-object v1

    .line 13200
    :cond_d
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 13201
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    move v5, v0

    goto :goto_19

    :cond_18
    move v5, v1

    .line 13202
    .local v5, "defaultOnly":Z
    :goto_19
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13203
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 13207
    .local v8, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    nop

    .local v1, "i":I
    :goto_24
    if-ge v1, v0, :cond_46

    .line 13208
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 13209
    .local v2, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_43

    .line 13210
    nop

    .line 13211
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13212
    .local v3, "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13213
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13207
    .end local v3    # "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 13216
    .end local v1    # "i":I
    .end local v2    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_46
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v8

    move v7, p5

    invoke-super/range {v2 .. v7}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 9
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    .line 13560
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13561
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v0, :cond_59

    .line 13562
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13563
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2c

    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_30

    .line 13564
    :cond_2c
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13562
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13565
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13567
    :cond_59
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13568
    .local v0, "NI":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_60
    if-ge v1, v0, :cond_88

    .line 13569
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 13570
    .local v2, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    if-eqz v3, :cond_82

    .line 13571
    const-string v3, "PackageManager"

    const-string v4, "    IntentFilter:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13572
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "PackageManager"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 13574
    :cond_82
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 13568
    .end local v2    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 13576
    .end local v1    # "j":I
    :cond_88
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 13710
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/server/pm/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3700()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13711
    return-void
.end method
