.class Lcom/android/server/am/Connor$3;
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

    .line 166
    iput-object p1, p0, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .line 169
    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    .line 171
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    iget-object v5, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;
    invoke-static {v5}, Lcom/android/server/am/Connor;->access$100(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorDbHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    # setter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, v5}, Lcom/android/server/am/Connor;->access$002(Lcom/android/server/am/Connor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 172
    :cond_1b
    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "connor_statistic_table"

    const-string v7, "connor_model_ver"

    const-string v8, "connor_model_acc"

    const-string v9, "connor_model_loss"

    const-string v10, "connor_stat_category"

    const-string v11, "connor_predict_num"

    const-string v12, "connor_feed_count"

    const-string v13, "connor_feed_hit"

    const-string v14, "connor_proc_count"

    const-string v15, "connor_proc_hit"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "uploadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;"
    :goto_49
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 180
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 181
    .local v5, "ver":I
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 182
    .local v6, "category":I
    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 183
    .local v7, "predictNum":I
    const/4 v8, 0x5

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 184
    .local v8, "feedCount":I
    const/4 v9, 0x6

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v15, v9

    .line 185
    .local v15, "feedHit":I
    const/4 v9, 0x7

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v16, v9

    .line 186
    .local v16, "startProcCount":I
    const/16 v9, 0x8

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v17, v9

    .line 187
    .local v17, "startProcHit":I
    const-string v9, ""

    .line 188
    .local v9, "key":Ljava/lang/String;
    const/4 v10, 0x1

    if-ne v6, v10, :cond_a9

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MM_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 195
    .end local v9    # "key":Ljava/lang/String;
    .local v14, "key":Ljava/lang/String;
    :goto_a7
    move-object v14, v9

    goto :goto_e5

    .line 191
    .end local v14    # "key":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    :cond_a9
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "acc":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, "loss":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NN_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .end local v10    # "acc":Ljava/lang/String;
    .end local v11    # "loss":Ljava/lang/String;
    goto :goto_a7

    .line 195
    .end local v9    # "key":Ljava/lang/String;
    .restart local v14    # "key":Ljava/lang/String;
    :goto_e5
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/Connor$MDMStatistic;

    move-object v13, v9

    .line 196
    .local v13, "record":Lcom/android/server/am/Connor$MDMStatistic;
    if-eqz v13, :cond_105

    .line 197
    iget v9, v13, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    add-int/2addr v9, v8

    iput v9, v13, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    .line 198
    iget v9, v13, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    add-int/2addr v9, v15

    iput v9, v13, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    .line 199
    iget v9, v13, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    add-int v9, v9, v16

    iput v9, v13, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    .line 200
    iget v9, v13, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    add-int v9, v9, v17

    iput v9, v13, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    goto :goto_11b

    .line 202
    :cond_105
    new-instance v12, Lcom/android/server/am/Connor$MDMStatistic;

    iget-object v10, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    move-object v9, v12

    move v11, v8

    move-object v3, v12

    move v12, v15

    move-object v4, v13

    move/from16 v13, v16

    .line 202
    .end local v13    # "record":Lcom/android/server/am/Connor$MDMStatistic;
    .local v4, "record":Lcom/android/server/am/Connor$MDMStatistic;
    move-object/from16 v18, v4

    move-object v4, v14

    move/from16 v14, v17

    .line 202
    .end local v14    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    .local v18, "record":Lcom/android/server/am/Connor$MDMStatistic;
    invoke-direct/range {v9 .. v14}, Lcom/android/server/am/Connor$MDMStatistic;-><init>(Lcom/android/server/am/Connor;IIII)V

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "ver":I
    .end local v6    # "category":I
    .end local v7    # "predictNum":I
    .end local v8    # "feedCount":I
    .end local v15    # "feedHit":I
    .end local v16    # "startProcCount":I
    .end local v17    # "startProcHit":I
    .end local v18    # "record":Lcom/android/server/am/Connor$MDMStatistic;
    :goto_11b
    goto/16 :goto_49

    .line 206
    :cond_11d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v3, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 207
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;>;"
    :goto_12a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1de

    .line 208
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 209
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/Connor$MDMStatistic;

    .line 210
    .local v6, "stat":Lcom/android/server/am/Connor$MDMStatistic;
    const-string/jumbo v7, "info"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v7, "connor_feed_count"

    iget v8, v6, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v7, "connor_feed_hit"

    iget v8, v6, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v7, "connor_proc_count"

    iget v8, v6, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v7, "connor_proc_hit"

    iget v8, v6, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v7, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v7}, Lcom/android/server/am/Connor;->access$600(Lcom/android/server/am/Connor;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v7

    const-string v8, "accuracy_statistic"

    invoke-virtual {v7, v8, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    iget-object v7, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mIsDebugMode:Z
    invoke-static {v7}, Lcom/android/server/am/Connor;->access$700(Lcom/android/server/am/Connor;)Z

    move-result v7

    if-eqz v7, :cond_1dc

    const-string v7, "Connor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "report key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    .line 218
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    .line 219
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;"
    .end local v6    # "stat":Lcom/android/server/am/Connor$MDMStatistic;
    :cond_1dc
    goto/16 :goto_12a

    .line 223
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;>;"
    :cond_1de
    iget-object v4, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "delete from connor_statistic_table"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e9} :catch_1ee
    .catchall {:try_start_4 .. :try_end_1e9} :catchall_1ec

    .line 228
    .end local v0    # "uploadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/Connor$MDMStatistic;>;"
    .end local v3    # "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_20d

    goto :goto_20a

    :catchall_1ec
    move-exception v0

    goto :goto_233

    .line 224
    :catch_1ee
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1ef
    const-string v3, "Connor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while report statistic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_208
    .catchall {:try_start_1ef .. :try_end_208} :catchall_1ec

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_20d

    :goto_20a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_20d
    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v0, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    nop

    .line 232
    return-void

    .line 228
    :goto_233
    if-eqz v2, :cond_238

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_238
    iget-object v3, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v3, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/Connor$3;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/am/Connor;->access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method
