.class public Lcom/android/server/OnePlusPowerController$KMeans;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KMeans"
.end annotation


# instance fields
.field private final mCenters:[[D

.field private final mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 2247
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$KMeans;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2249
    # getter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    .line 2250
    # getter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/OnePlusPowerController$Cluster;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    return-void
.end method

.method private IsDouble(Ljava/lang/String;)Z
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 2457
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_a

    .line 2458
    .local v0, "d":D
    const/4 v2, 0x1

    return v2

    .line 2459
    .end local v0    # "d":D
    :catch_a
    move-exception v0

    .line 2460
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsDouble: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic access$3500(Lcom/android/server/OnePlusPowerController$KMeans;[[DIIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController$KMeans;
    .param p1, "x1"    # [[D
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 2247
    invoke-direct/range {p0 .. p5}, Lcom/android/server/OnePlusPowerController$KMeans;->processKMeans([[DIIII)V

    return-void
.end method

.method private clearCenters()V
    .registers 7

    .line 2357
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    # getter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 2358
    move v2, v0

    .local v2, "j":I
    :goto_9
    const/4 v3, 0x2

    if-ge v2, v3, :cond_17

    .line 2359
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v3, v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 2358
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2357
    .end local v2    # "j":I
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2362
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method private clusterOfDataSet([[D[DI)I
    .registers 11
    .param p1, "centers"    # [[D
    .param p2, "tuple"    # [D
    .param p3, "k"    # I

    .line 2385
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v0

    .line 2387
    .local v0, "dist":D
    const/4 v2, 0x0

    .line 2389
    .local v2, "label":I
    const/4 v3, 0x1

    .line 2389
    .local v3, "i":I
    :goto_9
    if-ge v3, p3, :cond_1a

    .line 2390
    aget-object v4, p1, v3

    invoke-direct {p0, v4, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v4

    .line 2391
    .local v4, "temp":D
    cmpg-double v6, v4, v0

    if-gez v6, :cond_17

    .line 2392
    move-wide v0, v4

    .line 2393
    move v2, v3

    .line 2389
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2397
    .end local v3    # "i":I
    .end local v4    # "temp":D
    :cond_1a
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2398
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_37
    return v2
.end method

.method private getCenter(Lcom/android/server/OnePlusPowerController$Cluster;I)[D
    .registers 13
    .param p1, "cluster"    # Lcom/android/server/OnePlusPowerController$Cluster;
    .param p2, "dimNum"    # I

    .line 2433
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v0

    .line 2434
    .local v0, "num":I
    new-array v1, p2, [D

    .line 2435
    .local v1, "temp":[D
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v2

    .line 2437
    .local v2, "d":[[D
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_20

    .line 2438
    move v5, v3

    .local v5, "j":I
    :goto_f
    if-ge v5, p2, :cond_1d

    .line 2439
    aget-wide v6, v1, v5

    aget-object v8, v2, v4

    aget-wide v8, v8, v5

    add-double/2addr v6, v8

    aput-wide v6, v1, v5

    .line 2438
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2437
    .end local v5    # "j":I
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2443
    .end local v4    # "i":I
    :cond_20
    nop

    .local v3, "j":I
    :goto_21
    if-ge v3, p2, :cond_2c

    .line 2444
    aget-wide v4, v1, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 2443
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 2447
    .end local v3    # "j":I
    :cond_2c
    return-object v1
.end method

.method private getDistXY([D[D)D
    .registers 10
    .param p1, "tuple1"    # [D
    .param p2, "tuple2"    # [D

    .line 2371
    const-wide/16 v0, 0x0

    .line 2372
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_15

    .line 2373
    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 2372
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2375
    .end local v2    # "i":I
    :cond_15
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D
    .registers 12
    .param p1, "clusters"    # [Lcom/android/server/OnePlusPowerController$Cluster;
    .param p2, "centers"    # [[D

    .line 2411
    const-wide/16 v0, 0x0

    .line 2412
    .local v0, "var":D
    array-length v2, p1

    .line 2414
    .local v2, "k":I
    const/4 v3, 0x0

    move-wide v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "var":D
    :goto_6
    if-ge v0, v2, :cond_28

    .line 2415
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v1

    .line 2418
    .local v1, "d":[[D
    move-wide v5, v4

    move v4, v3

    .local v4, "j":I
    .local v5, "var":D
    :goto_10
    aget-object v7, p1, v0

    invoke-virtual {v7}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v7

    if-ge v4, v7, :cond_24

    .line 2419
    aget-object v7, v1, v4

    aget-object v8, p2, v0

    invoke-direct {p0, v7, v8}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 2418
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2414
    .end local v1    # "d":[[D
    .end local v4    # "j":I
    :cond_24
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v5

    goto :goto_6

    .line 2423
    .end local v0    # "i":I
    .end local v5    # "var":D
    .local v4, "var":D
    :cond_28
    return-wide v4
.end method

.method private printClustery(Lcom/android/server/OnePlusPowerController$Cluster;)V
    .registers 9
    .param p1, "cluster"    # Lcom/android/server/OnePlusPowerController$Cluster;

    .line 2487
    const-string v0, "OnePlusPowerController"

    const-string v1, "Cluster:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_9
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 2489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2490
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v3

    .line 2491
    .local v3, "array":[[D
    move v4, v0

    .local v4, "j":I
    :goto_19
    aget-object v5, v3, v0

    array-length v5, v5

    if-ge v4, v5, :cond_35

    .line 2492
    aget-object v5, v3, v1

    aget-wide v5, v5, v4

    double-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2493
    aget-object v5, v3, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_32

    .line 2494
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2491
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 2497
    .end local v4    # "j":I
    :cond_35
    const-string v4, "OnePlusPowerController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "array":[[D
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2499
    .end local v1    # "i":I
    :cond_41
    return-void
.end method

.method private printTwoDimensionalArray([[D)V
    .registers 8
    .param p1, "array"    # [[D

    .line 2470
    const-string v0, "OnePlusPowerController"

    const-string v1, "Array:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_3a

    .line 2472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2473
    .local v2, "sb":Ljava/lang/StringBuilder;
    move v3, v0

    .local v3, "j":I
    :goto_12
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2e

    .line 2474
    aget-object v4, p1, v1

    aget-wide v4, v4, v3

    double-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2475
    aget-object v4, p1, v0

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2b

    .line 2476
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2473
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2479
    .end local v3    # "j":I
    :cond_2e
    const-string v3, "OnePlusPowerController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2481
    .end local v1    # "i":I
    :cond_3a
    return-void
.end method

.method private processKMeans([[DIIII)V
    .registers 29
    .param p1, "dataSet"    # [[D
    .param p2, "dataNum"    # I
    .param p3, "dimNum"    # I
    .param p4, "k"    # I
    .param p5, "seed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 2510
    invoke-direct/range {p0 .. p1}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    .line 2513
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    array-length v6, v6

    if-ge v5, v6, :cond_1f

    .line 2514
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    new-instance v7, Lcom/android/server/OnePlusPowerController$Cluster;

    iget-object v8, v0, Lcom/android/server/OnePlusPowerController$KMeans;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {v7, v8, v1, v2}, Lcom/android/server/OnePlusPowerController$Cluster;-><init>(Lcom/android/server/OnePlusPowerController;II)V

    aput-object v7, v6, v5

    .line 2513
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 2517
    .end local v5    # "i":I
    :cond_1f
    const/4 v5, 0x0

    .line 2519
    .restart local v5    # "i":I
    new-instance v6, Ljava/util/Random;

    move/from16 v7, p5

    int-to-long v8, v7

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 2520
    .local v6, "random":Ljava/util/Random;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2521
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_2d
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-gt v9, v3, :cond_46

    .line 2522
    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 2523
    .local v9, "select":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2524
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    if-ne v10, v3, :cond_45

    goto :goto_46

    .line 2525
    .end local v9    # "select":I
    :cond_45
    goto :goto_2d

    .line 2527
    :cond_46
    :goto_46
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2529
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v3, :cond_85

    .line 2530
    const-string v10, "OnePlusPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The choosen data set is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_69
    if-ge v10, v2, :cond_82

    .line 2532
    iget-object v11, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v11, v11, v5

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, p1, v12

    aget-wide v12, v12, v10

    aput-wide v12, v11, v10

    .line 2531
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    .line 2529
    .end local v10    # "j":I
    :cond_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 2536
    :cond_85
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v10

    if-eqz v10, :cond_97

    .line 2537
    const-string v10, "OnePlusPowerController"

    const-string v11, "Centroids: "

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    iget-object v10, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-direct {v0, v10}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    .line 2541
    :cond_97
    const/4 v10, 0x0

    .line 2543
    .local v10, "label":I
    const/4 v5, 0x0

    :goto_99
    if-ge v5, v1, :cond_d1

    .line 2544
    iget-object v11, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v12, p1, v5

    invoke-direct {v0, v11, v12, v3}, Lcom/android/server/OnePlusPowerController$KMeans;->clusterOfDataSet([[D[DI)I

    move-result v10

    .line 2546
    const/4 v11, 0x0

    .local v11, "column":I
    :goto_a4
    if-ge v11, v2, :cond_bd

    .line 2547
    iget-object v12, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v12, v12, v10

    .line 2548
    .local v12, "tempCluster":Lcom/android/server/OnePlusPowerController$Cluster;
    invoke-virtual {v12}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v13

    .line 2549
    .local v13, "temp":[[D
    invoke-virtual {v12}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v14

    .line 2550
    .local v14, "size":I
    aget-object v15, v13, v14

    aget-object v16, p1, v5

    aget-wide v16, v16, v11

    aput-wide v16, v15, v11

    .line 2546
    .end local v12    # "tempCluster":Lcom/android/server/OnePlusPowerController$Cluster;
    .end local v13    # "temp":[[D
    .end local v14    # "size":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_a4

    .line 2552
    .end local v11    # "column":I
    :cond_bd
    iget-object v11, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v11, v11, v10

    iget-object v12, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    .line 2543
    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 2556
    :cond_d1
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 2557
    .local v11, "oldVar":D
    iget-object v13, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    iget-object v14, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-direct {v0, v13, v14}, Lcom/android/server/OnePlusPowerController$KMeans;->getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D

    move-result-wide v13

    .line 2559
    .local v13, "newVar":D
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v15

    if-eqz v15, :cond_fc

    .line 2560
    const-string v4, "OnePlusPowerController"

    move/from16 v19, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "i":I
    .local v19, "i":I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v6

    const-string v6, "Initial sum of squre difference is "

    .end local v6    # "random":Ljava/util/Random;
    .local v20, "random":Ljava/util/Random;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 2563
    .end local v19    # "i":I
    .end local v20    # "random":Ljava/util/Random;
    .restart local v5    # "i":I
    .restart local v6    # "random":Ljava/util/Random;
    :cond_fc
    move/from16 v19, v5

    move-object/from16 v20, v6

    .end local v5    # "i":I
    .end local v6    # "random":Ljava/util/Random;
    .restart local v19    # "i":I
    .restart local v20    # "random":Ljava/util/Random;
    :goto_100
    const/4 v4, 0x0

    .line 2565
    .local v4, "t":I
    :goto_101
    sub-double v5, v13, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    # getter for: Lcom/android/server/OnePlusPowerController;->mTolerance:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3000()I

    move-result v7

    move-object/from16 v21, v8

    int-to-double v7, v7

    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v21, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    cmpl-double v5, v5, v7

    if-ltz v5, :cond_1cc

    .line 2566
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v5

    if-eqz v5, :cond_130

    .line 2567
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    add-int/lit8 v4, v4, 0x1

    .line 2571
    :cond_130
    const/4 v5, 0x0

    .end local v19    # "i":I
    .restart local v5    # "i":I
    :goto_131
    if-ge v5, v3, :cond_142

    .line 2572
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    iget-object v7, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v7, v7, v5

    invoke-direct {v0, v7, v2}, Lcom/android/server/OnePlusPowerController$KMeans;->getCenter(Lcom/android/server/OnePlusPowerController$Cluster;I)[D

    move-result-object v7

    aput-object v7, v6, v5

    .line 2571
    add-int/lit8 v5, v5, 0x1

    goto :goto_131

    .line 2575
    :cond_142
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v6

    if-eqz v6, :cond_154

    .line 2576
    const-string v6, "OnePlusPowerController"

    const-string v7, "Centroids: "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-direct {v0, v6}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    .line 2580
    :cond_154
    move-wide v11, v13

    .line 2581
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    iget-object v7, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-direct {v0, v6, v7}, Lcom/android/server/OnePlusPowerController$KMeans;->getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D

    move-result-wide v13

    .line 2584
    const/4 v5, 0x0

    :goto_15e
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    array-length v6, v6

    if-ge v5, v6, :cond_16e

    .line 2585
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    .line 2584
    add-int/lit8 v5, v5, 0x1

    goto :goto_15e

    .line 2589
    :cond_16e
    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_170
    if-ge v5, v1, :cond_1a8

    .line 2590
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v8, p1, v5

    invoke-direct {v0, v6, v8, v3}, Lcom/android/server/OnePlusPowerController$KMeans;->clusterOfDataSet([[D[DI)I

    move-result v10

    .line 2592
    move v6, v7

    .local v6, "column":I
    :goto_17b
    if-ge v6, v2, :cond_194

    .line 2593
    iget-object v8, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v8, v8, v10

    .line 2594
    .local v8, "tempCluster":Lcom/android/server/OnePlusPowerController$Cluster;
    invoke-virtual {v8}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v15

    .line 2595
    .local v15, "temp":[[D
    invoke-virtual {v8}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v16

    .line 2596
    .local v16, "size":I
    aget-object v17, v15, v16

    aget-object v18, p1, v5

    aget-wide v18, v18, v6

    aput-wide v18, v17, v6

    .line 2592
    .end local v8    # "tempCluster":Lcom/android/server/OnePlusPowerController$Cluster;
    .end local v15    # "temp":[[D
    .end local v16    # "size":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_17b

    .line 2598
    .end local v6    # "column":I
    :cond_194
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v6, v6, v10

    iget-object v8, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    .line 2589
    add-int/lit8 v5, v5, 0x1

    goto :goto_170

    .line 2602
    :cond_1a8
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v6

    if-eqz v6, :cond_1c4

    .line 2603
    const-string v6, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After this iteration, the sum of squre difference is "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_1c4
    move/from16 v19, v5

    move-object/from16 v8, v21

    move/from16 v7, p5

    goto/16 :goto_101

    .line 2607
    .end local v5    # "i":I
    .restart local v19    # "i":I
    :cond_1cc
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v5

    if-eqz v5, :cond_203

    .line 2608
    const-string v5, "OnePlusPowerController"

    const-string v6, "The result is:"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    const/4 v5, 0x0

    .end local v19    # "i":I
    .restart local v5    # "i":I
    :goto_1da
    if-ge v5, v3, :cond_201

    .line 2610
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cluster "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v6, v6, v5

    .line 2612
    .local v6, "c":Lcom/android/server/OnePlusPowerController$Cluster;
    invoke-direct {v0, v6}, Lcom/android/server/OnePlusPowerController$KMeans;->printClustery(Lcom/android/server/OnePlusPowerController$Cluster;)V

    .line 2609
    .end local v6    # "c":Lcom/android/server/OnePlusPowerController$Cluster;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1da

    .line 2615
    :cond_201
    move/from16 v19, v5

    .end local v5    # "i":I
    .restart local v19    # "i":I
    :cond_203
    return-void
.end method


# virtual methods
.method public getClusterAverage(II)D
    .registers 10
    .param p1, "label"    # I
    .param p2, "dimen"    # I

    .line 2288
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_36

    # getter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v2

    if-le p1, v2, :cond_b

    goto :goto_36

    .line 2292
    :cond_b
    if-ltz p2, :cond_35

    const/4 v2, 0x2

    if-le p2, v2, :cond_11

    goto :goto_35

    .line 2296
    :cond_11
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v2

    .line 2297
    .local v2, "size":I
    if-gtz v2, :cond_1c

    return-wide v0

    .line 2298
    :cond_1c
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v0

    .line 2300
    .local v0, "d":[[D
    const-wide/16 v3, 0x0

    .line 2302
    .local v3, "sum":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    if-ge v1, v2, :cond_31

    .line 2303
    aget-object v5, v0, v1

    aget-wide v5, v5, p2

    add-double/2addr v3, v5

    .line 2302
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 2306
    .end local v1    # "i":I
    :cond_31
    int-to-double v5, v2

    div-double v5, v3, v5

    return-wide v5

    .line 2293
    .end local v0    # "d":[[D
    .end local v2    # "size":I
    .end local v3    # "sum":D
    :cond_35
    :goto_35
    return-wide v0

    .line 2289
    :cond_36
    :goto_36
    return-wide v0
.end method

.method public getClusterCenterX(I)J
    .registers 4
    .param p1, "label"    # I

    .line 2265
    if-ltz p1, :cond_12

    # getter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v0

    if-le p1, v0, :cond_9

    goto :goto_12

    .line 2268
    :cond_9
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    double-to-long v0, v0

    return-wide v0

    .line 2266
    :cond_12
    :goto_12
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getClusterCenterY(I)J
    .registers 4
    .param p1, "label"    # I

    .line 2273
    if-ltz p1, :cond_12

    # getter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v0

    if-le p1, v0, :cond_9

    goto :goto_12

    .line 2276
    :cond_9
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    double-to-long v0, v0

    return-wide v0

    .line 2274
    :cond_12
    :goto_12
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getClusterCoefVar(II)D
    .registers 9
    .param p1, "label"    # I
    .param p2, "dimen"    # I

    .line 2347
    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterVariance(II)D

    move-result-wide v0

    .line 2348
    .local v0, "delta":D
    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterAverage(II)D

    move-result-wide v2

    .line 2349
    .local v2, "avg":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_14

    .line 2350
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v4, v2

    return-wide v4

    .line 2352
    :cond_14
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    return-wide v4
.end method

.method public getClusterSize(I)I
    .registers 4
    .param p1, "label"    # I

    .line 2253
    const/4 v0, -0x1

    if-ltz p1, :cond_1a

    # getter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v1

    if-le p1, v1, :cond_a

    goto :goto_1a

    .line 2256
    :cond_a
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v1, v1, p1

    if-eqz v1, :cond_19

    .line 2257
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v0

    return v0

    .line 2259
    :cond_19
    return v0

    .line 2254
    :cond_1a
    :goto_1a
    return v0
.end method

.method public getClusterVariance(II)D
    .registers 14
    .param p1, "label"    # I
    .param p2, "dimen"    # I

    .line 2317
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_41

    # getter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v2

    if-le p1, v2, :cond_b

    goto :goto_41

    .line 2321
    :cond_b
    if-ltz p2, :cond_40

    const/4 v2, 0x2

    if-le p2, v2, :cond_11

    goto :goto_40

    .line 2326
    :cond_11
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v2

    .line 2327
    .local v2, "size":I
    if-gtz v2, :cond_1c

    return-wide v0

    .line 2328
    :cond_1c
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v0

    .line 2329
    .local v0, "d":[[D
    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterAverage(II)D

    move-result-wide v3

    .line 2330
    .local v3, "avg":D
    const-wide/16 v5, 0x0

    .line 2332
    .local v5, "deviation":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v2, :cond_3c

    .line 2333
    aget-object v7, v0, v1

    aget-wide v7, v7, p2

    sub-double/2addr v7, v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 2332
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 2336
    .end local v1    # "i":I
    :cond_3c
    int-to-double v7, v2

    div-double v7, v5, v7

    return-wide v7

    .line 2322
    .end local v0    # "d":[[D
    .end local v2    # "size":I
    .end local v3    # "avg":D
    .end local v5    # "deviation":D
    :cond_40
    :goto_40
    return-wide v0

    .line 2318
    :cond_41
    :goto_41
    return-wide v0
.end method
