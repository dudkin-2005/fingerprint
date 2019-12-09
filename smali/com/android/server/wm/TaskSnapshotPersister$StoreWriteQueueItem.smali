.class Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreWriteQueueItem"
.end annotation


# instance fields
.field private final mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mTaskId:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/app/ActivityManager$TaskSnapshot;)V
    .registers 6
    .param p2, "taskId"    # I
    .param p3, "userId"    # I
    .param p4, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 280
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$1;)V

    .line 281
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    .line 282
    iput p3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    .line 283
    iput-object p4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    .line 275
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    return v0
.end method


# virtual methods
.method onDequeuedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method onQueuedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method write()V
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    # invokes: Lcom/android/server/wm/TaskSnapshotPersister;->createDirectory(I)Z
    invoke-static {v0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$700(Lcom/android/server/wm/TaskSnapshotPersister;I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 301
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create snapshot directory for user dir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    .line 302
    # invokes: Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;
    invoke-static {v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$800(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_28
    const/4 v0, 0x0

    .line 305
    .local v0, "failed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeProto()Z

    move-result v1

    if-nez v1, :cond_30

    .line 306
    const/4 v0, 0x1

    .line 308
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeBuffer()Z

    move-result v1

    if-nez v1, :cond_37

    .line 309
    const/4 v0, 0x1

    .line 311
    :cond_37
    if-eqz v0, :cond_42

    .line 312
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    # invokes: Lcom/android/server/wm/TaskSnapshotPersister;->deleteSnapshot(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$900(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    .line 314
    :cond_42
    return-void
.end method

.method writeBuffer()Z
    .registers 11

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 346
    const-string v2, "WindowManager"

    const-string v3, "Invalid task snapshot hw bitmap"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v1

    .line 353
    :cond_15
    :try_start_15
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 354
    .local v2, "swBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v3

    .line 355
    .local v3, "reducedFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_31

    .line 356
    nop

    .line 357
    move-object v4, v2

    goto :goto_47

    .line 358
    :cond_31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v6, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 359
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 357
    invoke-static {v2, v4, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_47} :catch_b4

    .line 361
    .local v4, "reduced":Landroid/graphics/Bitmap;
    :goto_47
    :try_start_47
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 362
    .local v6, "reducedFos":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5f

    invoke-virtual {v4, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 363
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_56} :catch_97
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_b4

    .line 367
    .end local v6    # "reducedFos":Ljava/io/FileOutputStream;
    nop

    .line 370
    :try_start_57
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 371
    return v5

    .line 374
    :cond_60
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v7, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v9, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v6, v7, v9}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v6
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6a} :catch_b4

    .line 376
    .local v6, "file":Ljava/io/File;
    :try_start_6a
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 377
    .local v7, "fos":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v9, v8, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 378
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_77} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_77} :catch_b4

    .line 382
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 390
    .end local v2    # "swBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "reducedFile":Ljava/io/File;
    .end local v4    # "reduced":Landroid/graphics/Bitmap;
    .end local v6    # "file":Ljava/io/File;
    nop

    .line 392
    return v5

    .line 379
    .restart local v2    # "swBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "reducedFile":Ljava/io/File;
    .restart local v4    # "reduced":Landroid/graphics/Bitmap;
    .restart local v6    # "file":Ljava/io/File;
    :catch_7a
    move-exception v5

    .line 380
    .local v5, "e":Ljava/io/IOException;
    :try_start_7b
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for persisting."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    return v1

    .line 364
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "file":Ljava/io/File;
    :catch_97
    move-exception v5

    .line 365
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for persisting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_b3} :catch_b4

    .line 366
    return v1

    .line 385
    .end local v2    # "swBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "reducedFile":Ljava/io/File;
    .end local v4    # "reduced":Landroid/graphics/Bitmap;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b4
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_e2

    .line 387
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmap size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_e2
    return v1
.end method

.method writeProto()Z
    .registers 10

    .line 317
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    .line 318
    .local v0, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    .line 321
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->isRealSnapshot()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 324
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 325
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSystemUiVisibility()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    .line 326
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->isTranslucent()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 327
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 328
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v2

    .line 329
    .local v2, "file":Ljava/io/File;
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v3, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 330
    .local v3, "atomicFile":Lcom/android/internal/os/AtomicFile;
    const/4 v4, 0x0

    .line 332
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_69
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 333
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 334
    invoke-virtual {v3, v4}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_74} :catch_77

    .line 339
    nop

    .line 340
    const/4 v5, 0x1

    return v5

    .line 335
    :catch_77
    move-exception v5

    .line 336
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v3, v4}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 337
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for persisting. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v6, 0x0

    return v6
.end method
