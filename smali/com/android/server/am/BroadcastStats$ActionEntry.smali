.class final Lcom/android/server/am/BroadcastStats$ActionEntry;
.super Ljava/lang/Object;
.source "BroadcastStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionEntry"
.end annotation


# instance fields
.field final mAction:Ljava/lang/String;

.field final mBackgroundCheckViolations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastStats$ViolationEntry;",
            ">;"
        }
    .end annotation
.end field

.field mMaxDispatchTime:J

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastStats$PackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveCount:I

.field mSkipCount:I

.field mTotalDispatchTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    .line 66
    return-void
.end method
