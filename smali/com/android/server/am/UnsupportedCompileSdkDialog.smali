.class public Lcom/android/server/am/UnsupportedCompileSdkDialog;
.super Ljava/lang/Object;
.source "UnsupportedCompileSdkDialog.java"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 40
    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 41
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x10406ef

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    const v2, 0x109011c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50
    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 51
    if-eqz p3, :cond_0

    .line 52
    const v2, 0x10406ee

    new-instance v3, Lcom/android/server/am/-$$Lambda$UnsupportedCompileSdkDialog$K7plB7GGwH9pXpEKQfCoIs-hrJg;

    invoke-direct {v3, p2, p3}, Lcom/android/server/am/-$$Lambda$UnsupportedCompileSdkDialog$K7plB7GGwH9pXpEKQfCoIs-hrJg;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    .line 58
    iget-object p2, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->create()V

    .line 60
    iget-object p2, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 61
    const/16 p3, 0x7d2

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 64
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const-string p3, "UnsupportedCompileSdkDialog"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p2, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    const p3, 0x10201b4

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 67
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    new-instance p3, Lcom/android/server/am/-$$Lambda$UnsupportedCompileSdkDialog$F6Sx14AYFmP1rpv_SSjEio25FYc;

    invoke-direct {p3, p0, p1}, Lcom/android/server/am/-$$Lambda$UnsupportedCompileSdkDialog$F6Sx14AYFmP1rpv_SSjEio25FYc;-><init>(Lcom/android/server/am/UnsupportedCompileSdkDialog;Lcom/android/server/am/AppWarnings;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/am/UnsupportedCompileSdkDialog;Lcom/android/server/am/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 68
    iget-object p2, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    xor-int/lit8 p3, p3, 0x1

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/am/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 78
    return-void
.end method
