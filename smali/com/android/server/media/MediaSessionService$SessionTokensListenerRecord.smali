.class final Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionTokensListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/media/ISessionTokensListener;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/ISessionTokensListener;I)V
    .locals 0

    .line 2226
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2227
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->mListener:Landroid/media/ISessionTokensListener;

    .line 2229
    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->mUserId:I

    .line 2230
    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)Landroid/media/ISessionTokensListener;
    .locals 0

    .line 2222
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->mListener:Landroid/media/ISessionTokensListener;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;)I
    .locals 0

    .line 2222
    iget p0, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->mUserId:I

    return p0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 2234
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionTokensListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2236
    monitor-exit v0

    .line 2237
    return-void

    .line 2236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
