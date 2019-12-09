.class public Lcom/android/server/wm/DisplayFrames;
.super Ljava/lang/Object;
.source "DisplayFrames.java"


# instance fields
.field public final mContent:Landroid/graphics/Rect;

.field public final mCurrent:Landroid/graphics/Rect;

.field public mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field public final mDisplayCutoutSafe:Landroid/graphics/Rect;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field private final mDisplayInfoOverscan:Landroid/graphics/Rect;

.field public mDisplayWidth:I

.field public final mDock:Landroid/graphics/Rect;

.field public final mForceImmersive:Landroid/graphics/Rect;

.field public final mOverscan:Landroid/graphics/Rect;

.field public final mRestricted:Landroid/graphics/Rect;

.field public final mRestrictedOverscan:Landroid/graphics/Rect;

.field private final mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

.field public mRotation:I

.field public final mStable:Landroid/graphics/Rect;

.field public final mStableFullscreen:Landroid/graphics/Rect;

.field public final mSystem:Landroid/graphics/Rect;

.field public final mUnrestricted:Landroid/graphics/Rect;

.field public final mVoiceContent:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mForceImmersive:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 105
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 108
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    .line 123
    iput p1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 124
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 125
    return-void
.end method

.method private dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p4}, Ljava/io/PrintWriter;->println()V

    .line 228
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayFrames w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    const-string v1, "mStable"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    const-string v1, "mStableFullscreen"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    const-string v1, "mDock"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    const-string v1, "mCurrent"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    const-string v1, "mSystem"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    const-string v1, "mContent"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    const-string v1, "mVoiceContent"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    const-string v1, "mOverscan"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    const-string v1, "mRestrictedOverscan"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    const-string v1, "mRestricted"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    const-string v1, "mUnrestricted"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    const-string v1, "mDisplayInfoOverscan"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    const-string v1, "mRotatedDisplayInfoOverscan"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mDisplayCutout="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onBeginLayout()V
    .locals 4

    .line 137
    iget v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    packed-switch v0, :pswitch_data_0

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 155
    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 149
    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 143
    nop

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRotatedDisplayInfoOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mForceImmersive:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-lez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 187
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    if-lez v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 190
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    if-lez v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 194
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V
    .locals 4

    .line 128
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 129
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 130
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoOverscan:Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v2, p1, Landroid/view/DisplayInfo;->overscanTop:I

    iget v3, p1, Landroid/view/DisplayInfo;->overscanRight:I

    iget p1, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 134
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 201
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 203
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 204
    return-void
.end method
