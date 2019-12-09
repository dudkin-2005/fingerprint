.class public Lcom/android/server/am/UnsupportedDisplaySizeDialog;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 38
    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 39
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const p3, 0x10406f1

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 42
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    const p2, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 44
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 45
    const p3, 0x109011d

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    .line 49
    iget-object p2, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->create()V

    .line 51
    iget-object p2, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 52
    const/16 p3, 0x7d2

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 55
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const-string p3, "UnsupportedDisplaySizeDialog"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    const p3, 0x10201b4

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 58
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    new-instance p3, Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;

    invoke-direct {p3, p0, p1}, Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;-><init>(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/AppWarnings;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 59
    iget-object p2, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/am/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 73
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 69
    return-void
.end method
