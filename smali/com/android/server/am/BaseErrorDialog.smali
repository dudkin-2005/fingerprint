.class Lcom/android/server/am/BaseErrorDialog;
.super Landroid/app/AlertDialog;
.source "BaseErrorDialog.java"


# static fields
.field private static final DISABLE_BUTTONS:I = 0x1

.field private static final ENABLE_BUTTONS:I


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_46

    invoke-virtual {v0, v1}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    .line 90
    new-instance v0, Lcom/android/server/am/BaseErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseErrorDialog$1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 55
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 56
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Error Dialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    return-void

    nop

    :array_46
    .array-data 4
        0x50d0014
        0x50d0015
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/server/am/BaseErrorDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BaseErrorDialog;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BaseErrorDialog;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BaseErrorDialog;
    .param p1, "x1"    # Z

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V

    return-void
.end method

.method private setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 76
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_e

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    :cond_e
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 81
    if-eqz v0, :cond_1d

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    :cond_1d
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 85
    if-eqz v0, :cond_2c

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    :cond_2c
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    if-eqz v0, :cond_6

    .line 69
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_6
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .registers 5

    .line 61
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 64
    return-void
.end method
