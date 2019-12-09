.class abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"


# instance fields
.field protected final mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

.field pkgFlags:I

.field pkgPrivateFlags:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 32
    new-instance p1, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {p1}, Lcom/android/server/pm/permission/PermissionsState;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;->doCopy(Lcom/android/server/pm/SettingBase;)V

    .line 38
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/SettingBase;)V
    .locals 1

    .line 45
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    .line 46
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    .line 47
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    iget-object p1, p1, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 48
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/pm/SettingBase;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;->doCopy(Lcom/android/server/pm/SettingBase;)V

    .line 42
    return-void
.end method

.method public getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    return-object v0
.end method

.method setFlags(I)V
    .locals 1

    .line 55
    const v0, 0x40001

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    .line 58
    return-void
.end method

.method setPrivateFlags(I)V
    .locals 1

    .line 61
    const v0, 0xe020c

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    .line 68
    return-void
.end method
