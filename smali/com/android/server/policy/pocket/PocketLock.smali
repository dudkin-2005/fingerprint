.class public Lcom/android/server/policy/pocket/PocketLock;
.super Ljava/lang/Object;
.source "PocketLock.java"


# instance fields
.field private mAttached:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHintContainer:Landroid/view/View;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    .line 52
    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 53
    iget-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x10900af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/pocket/PocketLock;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/policy/pocket/PocketLock;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->addView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/pocket/PocketLock;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->removeView()V

    return-void
.end method

.method private addView()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    .line 93
    :cond_0
    return-void
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 104
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 105
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 106
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 107
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 112
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x10c0500

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 117
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private removeView()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 72
    new-instance v0, Lcom/android/server/policy/pocket/PocketLock$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/pocket/PocketLock$2;-><init>(Lcom/android/server/policy/pocket/PocketLock;)V

    .line 82
    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public show()V
    .locals 2

    .line 58
    new-instance v0, Lcom/android/server/policy/pocket/PocketLock$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/pocket/PocketLock$1;-><init>(Lcom/android/server/policy/pocket/PocketLock;)V

    .line 68
    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
