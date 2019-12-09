.class Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombiningRewriter"
.end annotation


# instance fields
.field private final mCollection:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const-string v0, "missing NetworkStatsCollection"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/net/NetworkStatsCollection;

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    .line 374
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    .line 384
    return-void
.end method

.method public reset()V
    .locals 0

    .line 379
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/DataOutputStream;)V

    .line 394
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 395
    return-void
.end method
