.class Lcom/android/server/media/MediaSessionService$ControllerCallback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerCallback"
.end annotation


# instance fields
.field private final mToken:Landroid/media/SessionToken2;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/SessionToken2;)V
    .locals 0

    .line 2212
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$ControllerCallback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    .line 2213
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$ControllerCallback;->mToken:Landroid/media/SessionToken2;

    .line 2214
    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/media/MediaController2;)V
    .locals 1

    .line 2218
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$ControllerCallback;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$ControllerCallback;->mToken:Landroid/media/SessionToken2;

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionService;->destroySession2Internal(Landroid/media/SessionToken2;)V

    .line 2219
    return-void
.end method
