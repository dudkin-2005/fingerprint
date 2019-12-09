.class Landroid/net/util/VersionedBroadcastListener$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VersionedBroadcastListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/VersionedBroadcastListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Receiver"
.end annotation


# instance fields
.field public final atomicGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final generationNumber:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->tag:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->atomicGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    iput-object p3, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->callback:Ljava/util/function/Consumer;

    .line 93
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->generationNumber:I

    .line 94
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 98
    iget-object p1, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->atomicGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    .line 104
    iget v0, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->generationNumber:I

    if-eq v0, p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object p1, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->callback:Ljava/util/function/Consumer;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 107
    return-void
.end method
