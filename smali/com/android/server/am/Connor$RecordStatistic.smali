.class final Lcom/android/server/am/Connor$RecordStatistic;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecordStatistic"
.end annotation


# instance fields
.field mCv:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/Connor;Landroid/content/ContentValues;)V
    .registers 3
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 147
    iput-object p1, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/server/am/Connor$RecordStatistic;->mCv:Landroid/content/ContentValues;

    .line 149
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 154
    const-wide/16 v0, 0x1388

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$100(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    # setter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2, v3}, Lcom/android/server/am/Connor;->access$002(Lcom/android/server/am/Connor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    :cond_19
    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "connor_statistic_table"

    iget-object v4, p0, Lcom/android/server/am/Connor$RecordStatistic;->mCv:Landroid/content/ContentValues;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 156
    iput-object v5, p0, Lcom/android/server/am/Connor$RecordStatistic;->mCv:Landroid/content/ContentValues;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2c
    .catchall {:try_start_2 .. :try_end_29} :catchall_2a

    goto :goto_30

    .line 160
    :catchall_2a
    move-exception v2

    goto :goto_54

    .line 157
    :catch_2c
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_30
    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v2, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    nop

    .line 163
    return-void

    .line 160
    :goto_54
    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v3, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor$RecordStatistic;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v2
.end method
