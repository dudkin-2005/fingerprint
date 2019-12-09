.class public Lcom/android/server/policy/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static TAG:Ljava/lang/String;

.field private static sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-string v0, "PolicyControl"

    sput-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .registers 4
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "clearableFlags"    # I

    .line 114
    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 115
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 116
    and-int/lit8 p1, p1, -0x5

    .line 118
    :cond_16
    return p1
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 123
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 124
    :cond_c
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 122
    :goto_15
    return v0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/android/server/policy/PolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 149
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 150
    if-nez p1, :cond_19

    .line 151
    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    .line 153
    :cond_19
    invoke-virtual {p1, p3}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 155
    :goto_1f
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 143
    const-string/jumbo v0, "sImmersiveStatusFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 144
    const-string/jumbo v0, "sImmersiveNavigationFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 145
    const-string/jumbo v0, "sImmersivePreconfirmationsFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 146
    return-void
.end method

.method public static getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 72
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 73
    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v0

    goto :goto_15

    .line 74
    :cond_10
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    .line 75
    .local v0, "vis":I
    :goto_15
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 76
    or-int/lit16 v0, v0, 0x1404

    .line 79
    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    .line 82
    :cond_27
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_39

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 83
    or-int/lit16 v0, v0, 0x1202

    .line 86
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 89
    :cond_39
    return v0
.end method

.method public static getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 93
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 94
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    .local v0, "flags":I
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 96
    or-int/lit16 v0, v0, 0x400

    .line 97
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 100
    :cond_1d
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 101
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 105
    :cond_2d
    if-eqz p0, :cond_41

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isQuickReplyWin()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 106
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->isForceShowStatusBar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 107
    or-int/lit16 v0, v0, 0x400

    .line 110
    :cond_41
    return v0
.end method

.method public static reloadFromSetting(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reloadFromSetting()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_c
    const/4 v0, 0x0

    .line 131
    .local v0, "value":Ljava/lang/String;
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "policy_control"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 134
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-void

    .line 135
    :cond_27
    invoke-static {v0}, Lcom/android/server/policy/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 136
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2c} :catch_2d

    .line 139
    goto :goto_44

    .line 137
    :catch_2d
    move-exception v1

    .line 138
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_44
    return-void
.end method

.method private static setFilters(Ljava/lang/String;)V
    .registers 11
    .param p0, "value"    # Ljava/lang/String;

    .line 158
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1b
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 160
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 161
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 162
    if-eqz p0, :cond_95

    .line 163
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "nvps":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_95

    aget-object v4, v0, v3

    .line 165
    .local v4, "nvp":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 166
    .local v5, "i":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3b

    .line 166
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    goto :goto_92

    .line 167
    .restart local v4    # "nvp":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_3b
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "n":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "v":Ljava/lang/String;
    const-string/jumbo v8, "immersive.full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 170
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 171
    .local v8, "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 172
    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-nez v9, :cond_5c

    .line 173
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 175
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_5c
    goto :goto_92

    :cond_5d
    const-string/jumbo v8, "immersive.status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 176
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 177
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 178
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    goto :goto_92

    :cond_6d
    const-string/jumbo v8, "immersive.navigation"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 179
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 180
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 181
    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-nez v9, :cond_82

    .line 182
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 184
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_82
    goto :goto_92

    :cond_83
    const-string/jumbo v8, "immersive.preconfirms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 185
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 186
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 164
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_92
    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 190
    .end local v0    # "nvps":[Ljava/lang/String;
    :cond_95
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_e4

    .line 191
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "immersiveStatusFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "immersiveNavigationFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "immersivePreconfirmationsFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_e4
    return-void
.end method
