.class Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;
.super Lcom/android/server/pm/PackageManagerService$PackageParserCallback;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParallelPackageParserCallback"
.end annotation


# instance fields
.field mOverlayPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 1046
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method findStaticOverlayPackages()V
    .registers 5

    .line 1050
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1051
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1052
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    iget-boolean v3, v2, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    if-eqz v3, :cond_31

    .line 1053
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    if-nez v3, :cond_2c

    .line 1054
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    .line 1056
    :cond_2c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v2    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_31
    goto :goto_11

    .line 1059
    :cond_32
    monitor-exit v0

    .line 1060
    return-void

    .line 1059
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v1
.end method

.method declared-synchronized getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    monitor-enter p0

    .line 1069
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_11

    .line 1070
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->mOverlayPackages:Ljava/util/List;

    .line 1071
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->getStaticOverlayPackages(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1070
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;->getStaticOverlayPaths(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1069
    :goto_11
    monitor-exit p0

    return-object v0

    .line 1068
    .end local p1    # "targetPackageName":Ljava/lang/String;
    .end local p2    # "targetPath":Ljava/lang/String;
    :catchall_13
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$ParallelPackageParserCallback;
    throw p1
.end method
