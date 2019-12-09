.class Lcom/android/server/am/Connor$1;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 112
    iput-object p1, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 116
    const-wide/16 v0, 0x1388

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    iget-object v3, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$100(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    # setter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2, v3}, Lcom/android/server/am/Connor;->access$002(Lcom/android/server/am/Connor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    :cond_19
    iget-object v2, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_4e
    .catchall {:try_start_2 .. :try_end_1c} :catchall_4c

    .line 119
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mQueueCv:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$200(Lcom/android/server/am/Connor;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 120
    .local v3, "cv":Landroid/content/ContentValues;
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_49

    .line 121
    :try_start_29
    iget-object v2, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "connor_history_table"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
    iget-object v2, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    monitor-enter v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_4e
    .catchall {:try_start_29 .. :try_end_38} :catchall_4c

    .line 123
    :try_start_38
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 124
    iget-object v4, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$300(Lcom/android/server/am/Connor;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 125
    monitor-exit v2

    goto :goto_52

    :catchall_46
    move-exception v4

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_46

    :try_start_48
    throw v4
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_49} :catch_4e
    .catchall {:try_start_48 .. :try_end_49} :catchall_4c

    .line 120
    .end local v3    # "cv":Landroid/content/ContentValues;
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v3
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4e
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 130
    :catchall_4c
    move-exception v2

    goto :goto_76

    .line 127
    :catch_4e
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_52
    iget-object v2, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v2, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :goto_76
    iget-object v3, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v3, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor$1;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v2
.end method
