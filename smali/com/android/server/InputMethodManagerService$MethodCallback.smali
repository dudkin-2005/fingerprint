.class final Lcom/android/server/InputMethodManagerService$MethodCallback;
.super Lcom/android/internal/view/IInputSessionCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodCallback"
.end annotation


# instance fields
.field private final mChannel:Landroid/view/InputChannel;

.field private final mMethod:Lcom/android/internal/view/IInputMethod;

.field private final mParentIMMS:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "imms"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 1242
    invoke-direct {p0}, Lcom/android/internal/view/IInputSessionCallback$Stub;-><init>()V

    .line 1243
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    .line 1244
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    .line 1245
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    .line 1246
    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .registers 7
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;

    .line 1250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1252
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/InputMethodManagerService;->onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    nop

    .line 1256
    return-void

    .line 1254
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
