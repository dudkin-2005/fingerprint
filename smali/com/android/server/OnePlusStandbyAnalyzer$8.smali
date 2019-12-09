.class Lcom/android/server/OnePlusStandbyAnalyzer$8;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 3983
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$8;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;)I
    .registers 7
    .param p1, "o1"    # Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;
    .param p2, "o2"    # Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;

    .line 3986
    iget-wide v0, p1, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mPlaying:J

    iget-wide v2, p2, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mPlaying:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 3987
    :cond_a
    iget-wide v0, p1, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mPlaying:J

    iget-wide v2, p2, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;->mPlaying:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, -0x1

    return v0

    .line 3988
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 3983
    check-cast p1, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;

    check-cast p2, Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$8;->compare(Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;)I

    move-result p1

    return p1
.end method
