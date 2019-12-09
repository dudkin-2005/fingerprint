.class Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;
.super Ljava/lang/Object;
.source "Dimmer.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaAnimationSpec"
.end annotation


# instance fields
.field private final mDuration:J

.field private final mFromAlpha:F

.field private final mToAlpha:F


# direct methods
.method constructor <init>(FFJ)V
    .locals 0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput p1, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    .line 358
    iput p2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    .line 359
    iput-wide p3, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    .line 360
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    .line 369
    long-to-float p3, p3

    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->getDuration()J

    move-result-wide v0

    long-to-float p4, v0

    div-float/2addr p3, p4

    iget p4, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    iget v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    sub-float/2addr p4, v0

    mul-float/2addr p3, p4

    iget p4, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    add-float/2addr p3, p4

    .line 371
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 372
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "from="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 377
    const-string p2, " to="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 378
    const-string p2, " duration="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 379
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 364
    iget-wide v0, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    return-wide v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    .line 383
    const-wide v0, 0x10b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 384
    iget v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mFromAlpha:F

    const-wide v3, 0x10200000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 385
    iget v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mToAlpha:F

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 386
    iget-wide v2, p0, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;->mDuration:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 387
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 388
    return-void
.end method
