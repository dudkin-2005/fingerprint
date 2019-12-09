.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 226
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 227
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x688

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 229
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 230
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 231
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 232
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v1, "wallpaper_orig"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 233
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v1, "wallpaper_lock_orig"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 234
    return-void
.end method

.method private dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 7
    .param p1, "sysChanged"    # Z
    .param p2, "lockChanged"    # Z

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    if-eqz p2, :cond_18

    .line 240
    :try_start_8
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v2

    goto :goto_18

    .line 246
    :catchall_16
    move-exception v2

    goto :goto_2f

    .line 242
    :cond_18
    :goto_18
    if-nez v0, :cond_27

    .line 244
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v2

    .line 246
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_16

    .line 247
    if-eqz v0, :cond_2c

    move-object v1, v0

    goto :goto_2e

    :cond_2c
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_2e
    return-object v1

    .line 246
    :goto_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_16

    throw v2
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 22
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 252
    move-object/from16 v3, p2

    if-nez v3, :cond_9

    .line 253
    return-void

    .line 255
    :cond_9
    const/16 v0, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v0, :cond_11

    move v0, v5

    goto :goto_12

    :cond_11
    move v0, v4

    :goto_12
    move v6, v0

    .line 256
    .local v6, "moved":Z
    const/16 v0, 0x8

    if-eq v2, v0, :cond_1c

    if-eqz v6, :cond_1a

    goto :goto_1c

    :cond_1a
    move v7, v4

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v7, v5

    .line 257
    .local v7, "written":Z
    :goto_1d
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    .local v8, "changedFile":Ljava/io/File;
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v9, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 262
    .local v9, "sysWallpaperChanged":Z
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v10, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 263
    .local v10, "lockWallpaperChanged":Z
    const/4 v11, 0x0

    .line 264
    .local v11, "notifyColorsWhich":I
    invoke-direct {v1, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    .line 266
    .local v15, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    sget-boolean v12, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v12, :cond_87

    .line 267
    const-string v12, "WallpaperManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Wallpaper file change: evt="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " sys="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " lock="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " imagePending="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " whichPending=0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 272
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " written="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 267
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_87
    const/4 v14, 0x2

    if-eqz v6, :cond_a5

    if-eqz v10, :cond_a5

    .line 280
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_97

    .line 281
    const-string v0, "WallpaperManagerService"

    const-string v4, "Sys -> lock MOVED_TO"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_97
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 284
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    .line 285
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    invoke-static {v0, v15, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 286
    return-void

    .line 289
    :cond_a5
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 290
    if-nez v9, :cond_b4

    if-eqz v10, :cond_af

    goto :goto_b4

    .line 359
    :cond_af
    move-object/from16 v18, v13

    move-object v4, v15

    goto/16 :goto_162

    .line 291
    :cond_b4
    :goto_b4
    :try_start_b4
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v12, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 292
    iget-object v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;
    :try_end_bb
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_16d

    if-eqz v12, :cond_ca

    if-ne v2, v0, :cond_ca

    :try_start_bf
    iget-boolean v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_c1
    .catchall {:try_start_bf .. :try_end_c1} :catchall_c4

    if-eqz v0, :cond_af

    goto :goto_ca

    .line 359
    :catchall_c4
    move-exception v0

    move-object/from16 v18, v13

    move-object v4, v15

    goto/16 :goto_171

    .line 295
    :cond_ca
    :goto_ca
    if-eqz v7, :cond_15f

    .line 300
    :try_start_cc
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z
    :try_end_ce
    .catchall {:try_start_cc .. :try_end_ce} :catchall_16d

    if-eqz v0, :cond_d7

    .line 301
    :try_start_d0
    const-string v0, "WallpaperManagerService"

    const-string v12, "Wallpaper written; generating crop"

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_c4

    .line 303
    :cond_d7
    :try_start_d7
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_16d

    .line 304
    if-eqz v6, :cond_ef

    .line 308
    :try_start_dc
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_e8

    .line 309
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v12, "moved-to, therefore restore; reloading metadata"

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_e8
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V
    invoke-static {v0, v12, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    :try_end_ef
    .catchall {:try_start_dc .. :try_end_ef} :catchall_c4

    .line 313
    :cond_ef
    :try_start_ef
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 314
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z
    :try_end_f6
    .catchall {:try_start_ef .. :try_end_f6} :catchall_16d

    if-eqz v0, :cond_ff

    .line 315
    :try_start_f8
    const-string v0, "WallpaperManagerService"

    const-string v5, "Crop done; invoking completion callback"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_c4

    .line 317
    :cond_ff
    :try_start_ff
    iput-boolean v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 318
    if-eqz v9, :cond_11c

    .line 320
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;
    :try_end_109
    .catchall {:try_start_ff .. :try_end_109} :catchall_16d

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v13

    move-object v13, v0

    move v0, v14

    move v14, v4

    move-object v4, v15

    move v15, v5

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v16, v4

    :try_start_116
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 322
    or-int/lit8 v11, v11, 0x1

    goto :goto_120

    .line 324
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_11c
    move-object/from16 v18, v13

    move v0, v14

    move-object v4, v15

    .line 324
    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_120
    if-nez v10, :cond_127

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_145

    .line 326
    :cond_127
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_132

    .line 327
    const-string v0, "WallpaperManagerService"

    const-string v5, "Lock-relevant wallpaper changed"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_132
    if-nez v10, :cond_13d

    .line 333
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 336
    :cond_13d
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    .line 337
    or-int/lit8 v0, v11, 0x2

    .line 340
    .end local v11    # "notifyColorsWhich":I
    .local v0, "notifyColorsWhich":I
    move v11, v0

    .line 340
    .end local v0    # "notifyColorsWhich":I
    .restart local v11    # "notifyColorsWhich":I
    :cond_145
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    invoke-static {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 343
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;
    :try_end_14e
    .catchall {:try_start_116 .. :try_end_14e} :catchall_16b

    if-eqz v0, :cond_157

    .line 345
    :try_start_150
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_155} :catch_156
    .catchall {:try_start_150 .. :try_end_155} :catchall_16b

    .line 349
    goto :goto_157

    .line 346
    :catch_156
    move-exception v0

    .line 354
    :cond_157
    :goto_157
    :try_start_157
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->applyFodWallpaperWorkaroundIfNecessary(I)V
    invoke-static {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    goto :goto_162

    .line 359
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_15f
    move-object/from16 v18, v13

    move-object v4, v15

    .line 359
    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_162
    monitor-exit v18
    :try_end_163
    .catchall {:try_start_157 .. :try_end_163} :catchall_16b

    .line 362
    if-eqz v11, :cond_16a

    .line 363
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    invoke-static {v0, v4, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 365
    :cond_16a
    return-void

    .line 359
    :catchall_16b
    move-exception v0

    goto :goto_171

    .line 359
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_16d
    move-exception v0

    move-object/from16 v18, v13

    move-object v4, v15

    .line 359
    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_171
    :try_start_171
    monitor-exit v18
    :try_end_172
    .catchall {:try_start_171 .. :try_end_172} :catchall_16b

    throw v0
.end method
