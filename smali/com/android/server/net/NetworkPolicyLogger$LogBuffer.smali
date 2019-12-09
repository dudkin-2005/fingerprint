.class final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/RingBuffer<",
        "Lcom/android/server/net/NetworkPolicyLogger$Data;",
        ">;"
    }
.end annotation


# static fields
.field private static final sDate:Ljava/util/Date;

.field private static final sFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 305
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 307
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 310
    const-class v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 311
    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 1

    .line 503
    sget-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 504
    sget-object p1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    sget-object p2, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appIdleStateChanged(IZ)V
    .locals 2

    .line 401
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 402
    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 405
    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 406
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 407
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 409
    return-void
.end method

.method public deviceIdleModeEnabled(Z)V
    .locals 3

    .line 391
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 392
    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 395
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 396
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 398
    return-void
.end method

.method public event(Ljava/lang/String;)V
    .locals 3

    .line 326
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 327
    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 330
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 331
    iput-object p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 333
    return-void
.end method

.method public firewallChainEnabled(IZ)V
    .locals 2

    .line 445
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 446
    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 449
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 450
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 451
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 453
    return-void
.end method

.method public getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;
    .locals 3

    .line 469
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    packed-switch v0, :pswitch_data_0

    .line 498
    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 496
    :pswitch_0
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$1000(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 494
    :pswitch_1
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$900(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 492
    :pswitch_2
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$800(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 490
    :pswitch_3
    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$700(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 488
    :pswitch_4
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$600(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 486
    :pswitch_5
    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$500(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 484
    :pswitch_6
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$400(ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 482
    :pswitch_7
    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$300(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 480
    :pswitch_8
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$200(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 478
    :pswitch_9
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$100(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 475
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 473
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$000(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 471
    :pswitch_c
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public meterednessChanged(IZ)V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 360
    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 363
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 364
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 365
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 367
    return-void
.end method

.method public networkBlocked(II)V
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 337
    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 340
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 341
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 342
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 344
    return-void
.end method

.method public paroleStateChanged(Z)V
    .locals 3

    .line 412
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 413
    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 416
    const/16 v1, 0x9

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 417
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 419
    return-void
.end method

.method public restrictBackgroundChanged(ZZ)V
    .locals 2

    .line 380
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 381
    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 384
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 385
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 386
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 388
    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    .line 456
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 457
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 458
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 459
    const-string v2, "NULL"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 460
    goto :goto_1

    .line 462
    :cond_0
    aget-object v2, v0, v1

    iget-wide v2, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 463
    const-string v2, " - "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 464
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 457
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 466
    :cond_1
    return-void
.end method

.method public tempPowerSaveWlChanged(IZ)V
    .locals 2

    .line 422
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 423
    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 426
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 427
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 428
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 430
    return-void
.end method

.method public uidFirewallRuleChanged(III)V
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 434
    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 437
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 438
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 439
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 440
    iput p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 442
    return-void
.end method

.method public uidPolicyChanged(III)V
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 348
    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 351
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 352
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 353
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 354
    iput p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 356
    return-void
.end method

.method public uidStateChanged(IIJ)V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 315
    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 318
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 319
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 320
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 321
    iput-wide p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 323
    return-void
.end method

.method public userRemoved(I)V
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 371
    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 374
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 375
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 377
    return-void
.end method
