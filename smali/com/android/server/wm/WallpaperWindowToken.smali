.class Lcom/android/server/wm/WallpaperWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "WallpaperWindowToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V
    .locals 7

    .line 41
    const/16 v3, 0x7dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 42
    iget-object p1, p4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 43
    return-void
.end method


# virtual methods
.method hasVisibleNotDrawnWallpaper()Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 148
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    return v1

    .line 146
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hideWallpaperToken(ZLjava/lang/String;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 54
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WallpaperWindowToken;->setHidden(Z)V

    .line 57
    return-void
.end method

.method sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 8

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 64
    :try_start_0
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 p6, 0x0

    .line 68
    goto :goto_1

    .line 67
    :catch_0
    move-exception v1

    .line 61
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method setExiting()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 49
    return-void
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 112
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    const-string v1, "WallpaperWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method updateWallpaperOffset(IIZ)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 76
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 p3, 0x0

    .line 74
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 85
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 86
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 88
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isHidden()Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 89
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WallpaperWindowToken;->setHidden(Z)V

    .line 92
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 96
    iget-object v3, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 97
    iget-object v4, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 98
    if-eqz p1, :cond_1

    .line 99
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v0, v5}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 102
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 96
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method

.method updateWallpaperWindows(Z)V
    .locals 6

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isHidden()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 121
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperWindowToken;->setHidden(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 127
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 128
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 129
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 130
    iget-object v3, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 131
    iget-object v4, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 133
    if-eqz p1, :cond_1

    .line 134
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v0, v5}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 138
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 130
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 143
    :cond_2
    return-void
.end method
