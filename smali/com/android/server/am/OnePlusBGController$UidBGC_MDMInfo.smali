.class public Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidBGC_MDMInfo"
.end annotation


# instance fields
.field public mCriteria:D

.field public mDrainType:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public mIsForceStop:Z

.field public mIsRelief:Z

.field public mPkg:Ljava/lang/String;

.field public mRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;ZDZ)V
    .registers 7
    .param p1, "ranking"    # Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .param p2, "drainType"    # Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;
    .param p3, "isRelief"    # Z
    .param p4, "criteria"    # D
    .param p6, "isForceStop"    # Z

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1648
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1649
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mDrainType:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    .line 1650
    iput-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mIsRelief:Z

    .line 1651
    iput-wide p4, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mCriteria:D

    .line 1652
    iput-boolean p6, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mIsForceStop:Z

    .line 1653
    return-void
.end method


# virtual methods
.method public fillInPkg(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1655
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mPkg:Ljava/lang/String;

    .line 1656
    return-void
.end method
