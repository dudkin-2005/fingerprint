.class public Lcom/android/server/OemSceneGameModePanelPopupWindow;
.super Landroid/widget/PopupWindow;
.source "OemSceneGameModePanelPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OemSceneGameModePanelPopupWindow"

.field private static final VALUE_ON:Ljava/lang/String; = "1"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mOptionBlock:Landroid/view/View;

.field private mOptionBlockIcon:Landroid/widget/ImageView;

.field private mOptionHeadsup:Landroid/view/View;

.field private mOptionHeadsupIcon:Landroid/widget/ImageView;

.field private mOptionWeak:Landroid/view/View;

.field private mOptionWeakIcon:Landroid/widget/ImageView;

.field private mOwner:Lcom/android/server/OemSceneGameModeDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "owner"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    .line 52
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setHeight(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setWidth(I)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setOutsideTouchable(Z)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setFocusable(Z)V

    .line 56
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x5090009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->initView()V

    .line 60
    return-void
.end method

.method private initView()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x507002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsup:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x507002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeak:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeak:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x507002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlock:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlock:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x5070036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsupIcon:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x5070037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeakIcon:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x5070035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlockIcon:Landroid/widget/ImageView;

    .line 72
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsup:Landroid/view/View;

    const/4 v1, -0x2

    if-ne p1, v0, :cond_12

    .line 111
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_block_notification"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3b

    .line 114
    :cond_12
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeak:Landroid/view/View;

    if-ne p1, v0, :cond_23

    .line 115
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_block_notification"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3b

    .line 118
    :cond_23
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlock:Landroid/view/View;

    if-ne p1, v0, :cond_34

    .line 119
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_block_notification"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_3b

    .line 124
    :cond_34
    const-string v0, "OemSceneGameModePanelPopupWindow"

    const-string v1, "Error while setting notify style"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModeDialog;->updateNotifyType()V

    .line 128
    return-void
.end method

.method public updateView(I)V
    .registers 7
    .param p1, "notifyType"    # I

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-nez p1, :cond_14

    .line 76
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsupIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeakIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 79
    :cond_14
    const/4 v2, 0x2

    if-ne p1, v2, :cond_27

    .line 80
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsupIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeakIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 83
    :cond_27
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3a

    .line 84
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsupIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeakIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 89
    :cond_3a
    const-string v0, "OemSceneGameModePanelPopupWindow"

    const-string v1, "Error while checking notify style"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_41
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "esport_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 95
    .local v1, "esport_mode_status":Z
    if-eqz v1, :cond_69

    .line 96
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v3, 0x5060063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8a

    .line 99
    :cond_69
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v2

    sget-object v3, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    if-ne v2, v3, :cond_7e

    .line 100
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v3, 0x506006c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8a

    .line 102
    :cond_7e
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v3, 0x506006b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_8a
    return-void
.end method
