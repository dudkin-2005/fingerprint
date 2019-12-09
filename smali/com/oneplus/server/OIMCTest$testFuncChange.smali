.class Lcom/oneplus/server/OIMCTest$testFuncChange;
.super Ljava/lang/Object;
.source "OIMCTest.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "testFuncChange"
.end annotation


# instance fields
.field private configObj:Ljava/lang/Object;

.field private differenceSwitch:[Ljava/lang/String;

.field private newConfigVal:I

.field private newStartVal:I

.field private newStopVal:I

.field private oldConfigVal:I

.field private oldStartVal:I

.field private oldStopVal:I

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCTest;

    .line 301
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    .line 303
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    .line 304
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    .line 305
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    .line 306
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    .line 307
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    .line 309
    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    .line 310
    return-void
.end method


# virtual methods
.method public checkConfigStatus(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "change"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 329
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    if-ne p2, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public checkDifferenceSwitch([Ljava/lang/String;)Z
    .registers 10
    .param p1, "obj"    # [Ljava/lang/String;

    .line 334
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 335
    array-length v1, p1

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_22

    aget-object v3, p1, v2

    .line 336
    .local v3, "x":Ljava/lang/String;
    const-string v4, "OIMCTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDifferenceSwitch new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v3    # "x":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 340
    :cond_22
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    if-eqz v1, :cond_47

    .line 341
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_2a
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    .line 342
    .local v4, "x":Ljava/lang/String;
    const-string v5, "OIMCTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDifferenceSwitch old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v4    # "x":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 346
    :cond_47
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    if-nez v1, :cond_4f

    if-nez p1, :cond_4f

    .line 347
    const/4 v0, 0x1

    return v0

    .line 348
    :cond_4f
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    if-eqz v1, :cond_5c

    if-eqz p1, :cond_5c

    .line 349
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 351
    :cond_5c
    return v0
.end method

.method public checkStatus(III)Z
    .registers 7
    .param p1, "startChange"    # I
    .param p2, "stopChange"    # I
    .param p3, "configChange"    # I

    .line 313
    const-string v0, "OIMCTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStatus startChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |stopChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |configChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |oldStartVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |oldStopVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |oldConfigVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |newStartVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |newStopVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |newConfigVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_79

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    add-int/2addr v1, p2

    if-ne v0, v1, :cond_79

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    add-int/2addr v1, p3

    if-ne v0, v1, :cond_79

    const/4 v0, 0x1

    goto :goto_7a

    :cond_79
    const/4 v0, 0x0

    :goto_7a
    return v0
.end method

.method public config(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 383
    if-eqz p1, :cond_b

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 384
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    .line 386
    :cond_b
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    .line 387
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 365
    if-eqz p1, :cond_b

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 366
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    .line 368
    :cond_b
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 374
    if-eqz p1, :cond_b

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 375
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    .line 377
    :cond_b
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public syncStatus()V
    .registers 2

    .line 356
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    .line 357
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    .line 358
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    .line 360
    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    .line 361
    return-void
.end method
