.class final Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitLocalBlackListRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method private constructor <init>(Lcom/android/server/am/Uterus;)V
    .registers 2

    .line 701
    iput-object p1, p0, Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/Uterus$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/Uterus;
    .param p2, "x1"    # Lcom/android/server/am/Uterus$1;

    .line 701
    invoke-direct {p0, p1}, Lcom/android/server/am/Uterus$InitLocalBlackListRunnable;-><init>(Lcom/android/server/am/Uterus;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 706
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/embryo_black"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 708
    .local v1, "array":Lorg/json/JSONArray;
    nop

    .line 708
    .local v2, "i":I
    :goto_13
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 709
    # getter for: Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/Uterus;->access$1000()Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_52

    .line 710
    :try_start_1e
    # getter for: Lcom/android/server/am/Uterus;->mLocalBlackList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/Uterus;->access$1000()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_4e

    .line 712
    :try_start_2a
    # getter for: Lcom/android/server/am/Uterus;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/am/Uterus;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_4b

    const-string v3, "Embryo_Uterus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read black list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4b} :catch_52

    .line 708
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 711
    :catchall_4e
    move-exception v4

    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_51} :catch_52

    .line 716
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_51
    goto :goto_5a

    .line 714
    :catch_52
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Embryo_Uterus"

    const-string v2, "Local black list initiate failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method
