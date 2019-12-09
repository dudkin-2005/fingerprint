.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field private static final DEBUG:Z = false

.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;
    .locals 29

    .line 337
    if-eqz p10, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    or-int/lit16 v1, v1, 0x100

    .line 339
    const/4 v2, 0x0

    if-eqz p9, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    or-int v24, v1, v3

    .line 341
    if-eqz p10, :cond_2

    .line 346
    :goto_2
    move/from16 v28, v2

    goto :goto_3

    .line 342
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 346
    :goto_3
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v3, v0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v10, p5

    move/from16 v13, p6

    move/from16 v16, p7

    move/from16 v20, p8

    move/from16 v25, p9

    invoke-direct/range {v3 .. v28}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;I)V

    .line 346
    return-object v0
.end method

.method private static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .line 273
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 276
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-object p1

    .line 279
    :cond_0
    :try_start_1
    const-string p1, "ShortcutService"

    const-string v0, "android:name for shortcut category must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    return-object p1

    .line 283
    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 13

    move-object/from16 v0, p3

    .line 290
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Shortcut:[I

    move-object v4, p1

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 293
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 294
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:shortcutId must be string literal. activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    nop

    .line 327
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    return-object v5

    .line 297
    :cond_0
    :try_start_1
    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    const/4 v2, 0x1

    invoke-virtual {v12, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v12, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 300
    invoke-virtual {v12, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 301
    const/4 v4, 0x4

    invoke-virtual {v12, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 302
    const/4 v4, 0x5

    invoke-virtual {v12, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 305
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:shortcutId must be provided. activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    nop

    .line 327
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    return-object v5

    .line 309
    :cond_1
    if-nez v6, :cond_2

    .line 310
    :try_start_2
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    nop

    .line 327
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-object v5

    .line 314
    :cond_2
    move/from16 v2, p4

    move-object v4, p2

    move-object v5, v0

    move/from16 v9, p5

    :try_start_3
    invoke-static/range {v1 .. v11}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 71
    :cond_0
    nop

    .line 74
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 75
    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 76
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    if-nez v5, :cond_1

    .line 78
    goto :goto_1

    .line 81
    :cond_1
    nop

    .line 83
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 82
    invoke-virtual {p0, v5, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 84
    if-eqz v5, :cond_2

    .line 85
    invoke-static {p0, v5, p1, p2, v4}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_3
    nop

    .line 96
    return-object v4

    .line 89
    :catch_0
    move-exception p2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-object v1

    .line 68
    :cond_4
    :goto_2
    return-object v1
.end method

.method private static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 108
    nop

    .line 110
    :try_start_0
    const-string v0, "android.app.shortcuts"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    if-nez v10, :cond_1

    .line 112
    nop

    .line 265
    if-eqz v10, :cond_0

    .line 266
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 112
    :cond_0
    return-object p4

    .line 115
    :cond_1
    :try_start_1
    new-instance v11, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v12, p2

    invoke-direct {v11, v12, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    .line 121
    nop

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v14

    .line 123
    nop

    .line 127
    nop

    .line 129
    nop

    .line 130
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 133
    move-object/from16 v5, p4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    const/4 v9, 0x3

    if-ne v1, v9, :cond_2

    .line 134
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    if-lez v17, :cond_1a

    .line 135
    :cond_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 136
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 139
    move-object/from16 v20, v11

    const/4 v11, 0x2

    if-ne v1, v9, :cond_a

    if-ne v2, v11, :cond_a

    const-string/jumbo v9, "shortcut"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 140
    if-nez v0, :cond_3

    .line 142
    nop

    .line 133
    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v3, v20

    const/4 v9, 0x0

    goto/16 :goto_9

    .line 144
    :cond_3
    nop

    .line 145
    nop

    .line 147
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 149
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shortcut "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has no intent. Skipping it."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    nop

    .line 133
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 154
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_5
    if-lt v4, v14, :cond_7

    .line 159
    const-string v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " shortcuts found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Skipping the rest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    nop

    .line 265
    if-eqz v10, :cond_6

    .line 266
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    :cond_6
    return-object v5

    .line 165
    :cond_7
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :try_start_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    nop

    .line 178
    :try_start_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 180
    if-eqz v3, :cond_8

    .line 181
    invoke-virtual {v0, v3}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    .line 182
    nop

    .line 185
    const/4 v3, 0x0

    :cond_8
    if-nez v5, :cond_9

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    move-object v5, v1

    :cond_9
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v4, v4, 0x1

    .line 190
    add-int/lit8 v16, v16, 0x1

    .line 194
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 175
    const-string v0, "ShortcutService"

    const-string v1, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    nop

    .line 133
    :goto_1
    move-object/from16 v11, v20

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 198
    :cond_a
    const/4 v9, 0x0

    if-eq v1, v11, :cond_b

    .line 199
    nop

    .line 133
    :goto_3
    move-object/from16 v18, v3

    move/from16 v19, v4

    :goto_4
    move-object/from16 v3, v20

    goto/16 :goto_9

    .line 202
    :cond_b
    const/4 v1, 0x1

    if-ne v2, v1, :cond_c

    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 203
    goto :goto_3

    .line 205
    :cond_c
    if-ne v2, v11, :cond_10

    const-string/jumbo v1, "shortcut"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 206
    const/4 v2, 0x1

    move-object v1, v7

    move/from16 v17, v2

    move-object v2, v13

    move-object/from16 v18, v3

    move-object v3, v12

    move/from16 v19, v4

    move-object/from16 v4, v20

    move-object v11, v5

    move/from16 v5, p3

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 208
    if-nez v1, :cond_d

    .line 210
    nop

    .line 133
    :goto_5
    move-object v5, v11

    goto :goto_4

    .line 215
    :cond_d
    if-eqz v11, :cond_f

    .line 216
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_f

    .line 217
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 218
    const-string v1, "ShortcutService"

    const-string v2, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    goto :goto_5

    .line 216
    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 223
    :cond_f
    nop

    .line 224
    nop

    .line 225
    nop

    .line 133
    move-object v0, v1

    move-object v5, v11

    move/from16 v4, v19

    move-object/from16 v11, v20

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 227
    :cond_10
    move-object/from16 v18, v3

    move/from16 v19, v4

    const/16 v17, 0x1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_14

    const-string v1, "intent"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 228
    if-eqz v0, :cond_13

    .line 229
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_7

    .line 234
    :cond_11
    iget-object v1, v7, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v10, v13}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 237
    const-string v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut intent action must be provided. activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    nop

    .line 239
    nop

    .line 133
    move-object v11, v3

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_2

    .line 241
    :cond_12
    move-object/from16 v3, v20

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    goto/16 :goto_9

    .line 230
    :cond_13
    :goto_7
    move-object/from16 v3, v20

    const-string v1, "ShortcutService"

    const-string v2, "Ignoring excessive intent tag."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    goto :goto_9

    .line 244
    :cond_14
    move-object/from16 v3, v20

    const/4 v1, 0x3

    if-ne v2, v1, :cond_18

    const-string v1, "categories"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 245
    if-eqz v0, :cond_19

    .line 246
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 247
    goto :goto_9

    .line 249
    :cond_15
    invoke-static {v7, v13}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 251
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty category found. activity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    goto :goto_9

    .line 255
    :cond_16
    if-nez v18, :cond_17

    .line 256
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_8

    .line 258
    :cond_17
    move-object/from16 v2, v18

    :goto_8
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    nop

    .line 133
    move-object v11, v3

    move/from16 v4, v19

    move-object v3, v2

    goto/16 :goto_0

    .line 262
    :cond_18
    const-string v1, "ShortcutService"

    const-string v4, "Invalid tag \'%s\' found at depth %d"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v17

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    nop

    .line 133
    :cond_19
    :goto_9
    move-object v11, v3

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_0

    .line 265
    :cond_1a
    if-eqz v10, :cond_1b

    .line 266
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 269
    :cond_1b
    return-object v5

    .line 265
    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_1c

    .line 266
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1c
    throw v0
.end method
