.class Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
.super Ljava/lang/Object;
.source "OnePlusJankManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusJankManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JankMDMItem"
.end annotation


# instance fields
.field public reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

.field public times:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusJankManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/OnePlusJankManager$1;

    .line 155
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;-><init>()V

    return-void
.end method
