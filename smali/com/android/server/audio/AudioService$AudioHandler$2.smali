.class Lcom/android/server/audio/AudioService$AudioHandler$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/AudioService$AudioHandler;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$AudioHandler;)V
    .locals 0

    .line 5656
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler$2;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 5658
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioHandler$2;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->access$6400(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V

    .line 5659
    const/4 p1, 0x1

    return p1
.end method
