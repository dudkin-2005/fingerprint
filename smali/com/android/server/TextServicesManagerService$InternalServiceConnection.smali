.class final Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field private final mSciId:Ljava/lang/String;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;)V"
        }
    .end annotation

    .line 983
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    .line 985
    iput-object p3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 986
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/util/HashMap;
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    return-object p0
.end method

.method private onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 999
    nop

    .line 1000
    invoke-static {p2}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object p1

    .line 1002
    iget-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1003
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 1004
    invoke-virtual {p2, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V

    .line 1006
    :cond_0
    return-void
.end method

.method private onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V
    .locals 1

    .line 1019
    iget-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1020
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$100(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 1021
    invoke-virtual {p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceDisconnectedLocked()V

    .line 1023
    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 991
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 992
    monitor-exit v0

    .line 993
    return-void

    .line 992
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1011
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->onServiceDisconnectedInnerLocked(Landroid/content/ComponentName;)V

    .line 1012
    monitor-exit v0

    .line 1013
    return-void

    .line 1012
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
