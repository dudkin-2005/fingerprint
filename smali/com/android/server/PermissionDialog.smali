.class public Lcom/android/server/PermissionDialog;
.super Landroid/app/AlertDialog;
.source "PermissionDialog.java"


# static fields
.field private static final DISMISS_TIMEOUT:J = 0x3a98L

.field private static final MSG_ALLOWED:I = 0x2

.field private static final MSG_IGNORED:I = 0x3

.field private static final MSG_IGNORED_TIMEOUT:I = 0x4

.field private static final MSG_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionDialog"


# instance fields
.field private mChoice:Landroid/widget/CheckBox;

.field private final mCode:I

.field private mConsuming:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mUid:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .locals 1

    .line 91
    const v0, 0x10303e5

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 62
    new-instance v0, Lcom/android/server/PermissionDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;)V

    iput-object v0, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 96
    iput-object p2, p0, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    .line 97
    iput p3, p0, Lcom/android/server/PermissionDialog;->mCode:I

    .line 98
    iput-object p5, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    .line 99
    iput p4, p0, Lcom/android/server/PermissionDialog;->mUid:I

    .line 100
    const p2, 0x1070006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7d3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 p3, 0x20000

    invoke-virtual {p2, p3, p3}, Landroid/view/Window;->setFlags(II)V

    .line 106
    const p2, 0x10405de

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/PermissionDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    const p2, 0x1010355

    invoke-virtual {p0, p2}, Lcom/android/server/PermissionDialog;->setIconAttribute(I)V

    .line 108
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/PermissionDialog;->setCancelable(Z)V

    .line 110
    nop

    .line 111
    const p3, 0x1040071

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    .line 112
    const/4 p5, 0x2

    invoke-virtual {p4, p5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 110
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 114
    nop

    .line 115
    const p3, 0x104021f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    .line 116
    const/4 p4, 0x3

    invoke-virtual {p3, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 114
    const/4 p4, -0x2

    invoke-virtual {p0, p4, p1, p3}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 118
    iget-object p1, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 120
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission info: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p4, p4, 0x110

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 123
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x10900ac

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    .line 127
    iget-object p3, p0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    const p4, 0x102037e

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 128
    iget-object p4, p0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    const v0, 0x102037d

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;

    .line 130
    iget-object p4, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p1, p5, p2

    iget-object p1, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget p2, p0, Lcom/android/server/PermissionDialog;->mCode:I

    aget-object p1, p1, p2

    const/4 p2, 0x1

    aput-object p1, p5, p2

    const p1, 0x10405dd

    invoke-virtual {p4, p1, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/android/server/PermissionDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/server/PermissionDialog;->setView(Landroid/view/View;)V

    .line 135
    iget-object p1, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 p3, 0x3a98

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/PermissionDialog;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/server/PermissionDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/PermissionDialog;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/PermissionDialog;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/PermissionDialog;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/server/PermissionDialog;->mCode:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/PermissionDialog;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/server/PermissionDialog;->mUid:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    return-object p0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 160
    const/16 v1, 0x2200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 167
    return-object p1
.end method

.method private setEnabled(Z)V
    .locals 1

    .line 171
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/PermissionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 174
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/PermissionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/android/server/PermissionDialog;->mConsuming:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 p1, 0x1

    return p1

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public ignore()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 144
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PermissionDialog;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method
