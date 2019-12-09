.class Lcom/android/server/VibratorService$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mOpPkg:Ljava/lang/String;

.field private final mOriginalEffect:Landroid/os/VibrationEffect;

.field private final mStartTimeDebug:J

.field private final mUid:I

.field private final mUsageHint:I


# direct methods
.method public constructor <init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .registers 8
    .param p1, "startTimeDebug"    # J
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "originalEffect"    # Landroid/os/VibrationEffect;
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-wide p1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    .line 270
    iput-object p3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 271
    iput-object p4, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    .line 272
    iput p5, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUsageHint:I

    .line 273
    iput p6, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 274
    iput-object p7, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 275
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTime: "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {}, Landroid/icu/text/DateFormat;->getDateTimeInstance()Landroid/icu/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/VibratorService$VibrationInfo;->mStartTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", effect: "

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalEffect: "

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOriginalEffect:Landroid/os/VibrationEffect;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usageHint: "

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUsageHint:I

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mUid:I

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opPkg: "

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    return-object v0
.end method
