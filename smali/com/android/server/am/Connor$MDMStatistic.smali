.class Lcom/android/server/am/Connor$MDMStatistic;
.super Ljava/lang/Object;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MDMStatistic"
.end annotation


# instance fields
.field public feedCount:I

.field public feedHit:I

.field public startProcCount:I

.field public startProcHit:I

.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/Connor;IIII)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/am/Connor;
    .param p2, "fc"    # I
    .param p3, "fh"    # I
    .param p4, "spc"    # I
    .param p5, "sph"    # I

    .line 1035
    iput-object p1, p0, Lcom/android/server/am/Connor$MDMStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    .line 1031
    iput v0, p0, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    .line 1032
    iput v0, p0, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    .line 1033
    iput v0, p0, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    .line 1036
    iput p2, p0, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    .line 1037
    iput p3, p0, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    .line 1038
    iput p4, p0, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    .line 1039
    iput p5, p0, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    .line 1040
    return-void
.end method
