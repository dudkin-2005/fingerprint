.class Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodFileManager"
.end annotation


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_ID:Ljava/lang/String; = "subtypeId"

.field private static final ATTR_IME_SUBTYPE_LANGUAGE_TAG:Ljava/lang/String; = "languageTag"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_ASCII_CAPABLE:Ljava/lang/String; = "isAsciiCapable"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"


# instance fields
.field private final mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

.field private final mAdditionalSubtypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .line 4379
    .local p1, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    .line 4380
    if-eqz p1, :cond_77

    .line 4383
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 4384
    if-nez p2, :cond_1d

    .line 4385
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_21

    .line 4386
    :cond_1d
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 4387
    .local v0, "systemDir":Ljava/io/File;
    :goto_21
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "inputmethod"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4388
    .local v1, "inputMethodDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 4389
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create dir.: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    :cond_4f
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "subtypes.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4392
    .local v2, "subtypeFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    const-string/jumbo v4, "input-subtypes"

    invoke-direct {v3, v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 4393
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 4395
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    invoke-static {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    goto :goto_76

    .line 4398
    :cond_6f
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V

    .line 4401
    :goto_76
    return-void

    .line 4381
    .end local v0    # "systemDir":Ljava/io/File;
    .end local v1    # "inputMethodDir":Ljava/io/File;
    .end local v2    # "subtypeFile":Ljava/io/File;
    :cond_77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "methodMap is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$700(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 4358
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method private deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    .registers 6
    .param p1, "imiId"    # Ljava/lang/String;

    .line 4404
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4405
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4406
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    invoke-static {v1, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 4408
    monitor-exit v0

    .line 4409
    return-void

    .line 4408
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V
    .registers 22
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            ")V"
        }
    .end annotation

    .line 4494
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    move-object/from16 v1, p0

    .line 4494
    if-eqz v1, :cond_1aa

    if-nez p1, :cond_8

    goto/16 :goto_1aa

    .line 4495
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->clear()V

    .line 4496
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_f} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_1a1
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_1a1

    move-object v3, v0

    .line 4497
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 4498
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4499
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 4501
    .local v5, "type":I
    :goto_22
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2e

    if-eq v5, v7, :cond_2e

    goto :goto_22

    .line 4503
    :cond_2e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4504
    .local v6, "firstNodeName":Ljava/lang/String;
    const-string/jumbo v9, "subtypes"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17c

    .line 4507
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 4508
    .local v9, "depth":I
    const/4 v10, 0x0

    .line 4509
    .local v10, "currentImiId":Ljava/lang/String;
    move-object v11, v10

    move v10, v5

    move-object v5, v4

    .line 4510
    .local v5, "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v10, "type":I
    .local v11, "currentImiId":Ljava/lang/String;
    :goto_43
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_47} :catch_18a
    .catchall {:try_start_11 .. :try_end_47} :catchall_186

    move v10, v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_51

    .line 4511
    :try_start_4b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4f} :catch_18a
    .catchall {:try_start_4b .. :try_end_4f} :catchall_18d

    if-le v12, v9, :cond_175

    :cond_51
    if-eq v10, v7, :cond_175

    .line 4512
    if-eq v10, v8, :cond_5c

    .line 4513
    nop

    .line 4509
    move-object/from16 v16, v6

    move/from16 v17, v9

    goto/16 :goto_15b

    .line 4514
    :cond_5c
    :try_start_5c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 4515
    .local v12, "nodeName":Ljava/lang/String;
    const-string/jumbo v13, "imi"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_67} :catch_18a
    .catchall {:try_start_5c .. :try_end_67} :catchall_186

    if-eqz v13, :cond_8e

    .line 4516
    :try_start_69
    const-string/jumbo v13, "id"

    invoke-interface {v0, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 4517
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7f

    .line 4518
    const-string v13, "InputMethodManagerService"

    const-string v14, "Invalid imi id found in subtypes.xml"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    goto :goto_43

    .line 4521
    :cond_7f
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v13

    .line 4522
    invoke-virtual {v1, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_88} :catch_18a
    .catchall {:try_start_69 .. :try_end_88} :catchall_18d

    .line 4560
    move-object/from16 v16, v6

    move/from16 v17, v9

    goto/16 :goto_16a

    .line 4523
    :cond_8e
    :try_start_8e
    const-string/jumbo v13, "subtype"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_166

    .line 4524
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_140

    if-nez v5, :cond_a5

    .line 4525
    move-object/from16 v16, v6

    move/from16 v17, v9

    goto/16 :goto_144

    .line 4528
    :cond_a5
    const-string/jumbo v13, "icon"

    .line 4529
    invoke-interface {v0, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4528
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4530
    .local v13, "icon":I
    const-string/jumbo v14, "label"

    .line 4531
    invoke-interface {v0, v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4530
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 4532
    .local v14, "label":I
    const-string/jumbo v15, "imeSubtypeLocale"

    .line 4533
    invoke-interface {v0, v4, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4534
    .local v15, "imeSubtypeLocale":Ljava/lang/String;
    const-string/jumbo v7, "languageTag"

    .line 4535
    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4536
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v8, "imeSubtypeMode"

    .line 4537
    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4538
    .local v8, "imeSubtypeMode":Ljava/lang/String;
    const-string/jumbo v4, "imeSubtypeExtraValue"

    .line 4539
    const/4 v1, 0x0

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4540
    .local v4, "imeSubtypeExtraValue":Ljava/lang/String;
    const-string v1, "1"

    const-string/jumbo v2, "isAuxiliary"

    .line 4541
    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4540
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .local v16, "firstNodeName":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4542
    .local v1, "isAuxiliary":Z
    const-string v2, "1"

    const-string/jumbo v6, "isAsciiCapable"

    .line 4543
    move/from16 v17, v9

    const/4 v9, 0x0

    invoke-interface {v0, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4542
    .end local v9    # "depth":I
    .local v17, "depth":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4544
    .local v2, "isAsciiCapable":Z
    new-instance v6, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 4545
    invoke-virtual {v6, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 4546
    invoke-virtual {v6, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 4547
    invoke-virtual {v6, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 4548
    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 4549
    invoke-virtual {v6, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 4550
    invoke-virtual {v6, v4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 4551
    invoke-virtual {v6, v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 4552
    invoke-virtual {v6, v2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 4553
    .local v6, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    const-string/jumbo v9, "subtypeId"

    .line 4554
    move/from16 v18, v1

    const/4 v1, 0x0

    invoke-interface {v0, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4555
    .end local v1    # "isAuxiliary":Z
    .local v9, "subtypeIdString":Ljava/lang/String;
    .local v18, "isAuxiliary":Z
    if-eqz v9, :cond_138

    .line 4556
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 4558
    :cond_138
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4558
    .end local v2    # "isAsciiCapable":Z
    .end local v4    # "imeSubtypeExtraValue":Ljava/lang/String;
    .end local v6    # "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .end local v7    # "languageTag":Ljava/lang/String;
    .end local v8    # "imeSubtypeMode":Ljava/lang/String;
    .end local v9    # "subtypeIdString":Ljava/lang/String;
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v13    # "icon":I
    .end local v14    # "label":I
    .end local v15    # "imeSubtypeLocale":Ljava/lang/String;
    .end local v18    # "isAuxiliary":Z
    goto :goto_16a

    .line 4525
    .end local v16    # "firstNodeName":Ljava/lang/String;
    .end local v17    # "depth":I
    .local v6, "firstNodeName":Ljava/lang/String;
    .local v9, "depth":I
    .restart local v12    # "nodeName":Ljava/lang/String;
    :cond_140
    move-object/from16 v16, v6

    move/from16 v17, v9

    .line 4525
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .restart local v16    # "firstNodeName":Ljava/lang/String;
    .restart local v17    # "depth":I
    :goto_144
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME uninstalled or not valid.: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_15a} :catch_18a
    .catchall {:try_start_8e .. :try_end_15a} :catchall_186

    .line 4526
    nop

    .line 4509
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v16    # "firstNodeName":Ljava/lang/String;
    .end local v17    # "depth":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v9    # "depth":I
    :goto_15b
    move-object/from16 v6, v16

    move/from16 v9, v17

    move-object/from16 v1, p0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 4509
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .restart local v16    # "firstNodeName":Ljava/lang/String;
    .restart local v17    # "depth":I
    goto/16 :goto_43

    .line 4560
    .end local v16    # "firstNodeName":Ljava/lang/String;
    .end local v17    # "depth":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v9    # "depth":I
    :cond_166
    move-object/from16 v16, v6

    move/from16 v17, v9

    .line 4509
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v9    # "depth":I
    .restart local v16    # "firstNodeName":Ljava/lang/String;
    .restart local v17    # "depth":I
    :goto_16a
    move-object/from16 v6, v16

    move/from16 v9, v17

    move-object/from16 v1, p0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_43

    .line 4561
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10    # "type":I
    .end local v11    # "currentImiId":Ljava/lang/String;
    .end local v16    # "firstNodeName":Ljava/lang/String;
    .end local v17    # "depth":I
    :cond_175
    if-eqz v3, :cond_17a

    :try_start_177
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_17a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_177 .. :try_end_17a} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_17a} :catch_1a1
    .catch Ljava/lang/NumberFormatException; {:try_start_177 .. :try_end_17a} :catch_1a1

    .line 4564
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_17a
    nop

    .line 4565
    return-void

    .line 4505
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .local v5, "type":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    :cond_17c
    move-object/from16 v16, v6

    .line 4505
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v16    # "firstNodeName":Ljava/lang/String;
    :try_start_17e
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Xml doesn\'t start with subtypes"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_17e .. :try_end_186} :catch_18a
    .catchall {:try_start_17e .. :try_end_186} :catchall_186

    .line 4561
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    .end local v16    # "firstNodeName":Ljava/lang/String;
    :catchall_186
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto :goto_18f

    .line 4496
    :catch_18a
    move-exception v0

    move-object v4, v0

    :try_start_18c
    throw v4
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18d

    .line 4561
    :catchall_18d
    move-exception v0

    move-object v1, v0

    :goto_18f
    if-eqz v3, :cond_1a0

    if-eqz v4, :cond_19d

    :try_start_193
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_196
    .catch Ljava/lang/Throwable; {:try_start_193 .. :try_end_196} :catch_197
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_193 .. :try_end_196} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_196} :catch_1a1
    .catch Ljava/lang/NumberFormatException; {:try_start_193 .. :try_end_196} :catch_1a1

    goto :goto_1a0

    :catch_197
    move-exception v0

    move-object v2, v0

    :try_start_199
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1a0

    :cond_19d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_1a0
    :goto_1a0
    throw v1
    :try_end_1a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_199 .. :try_end_1a1} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_1a1} :catch_1a1
    .catch Ljava/lang/NumberFormatException; {:try_start_199 .. :try_end_1a1} :catch_1a1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1a1
    move-exception v0

    .line 4562
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Error reading subtypes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4563
    return-void

    .line 4494
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1aa
    :goto_1aa
    return-void
.end method

.method private static writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    .registers 16
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .line 4441
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p2, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, v0

    .line 4442
    .local v2, "isSetMethodMap":Z
    :goto_d
    const/4 v3, 0x0

    move-object v4, v3

    .line 4444
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_f
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 4445
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4446
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4447
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4448
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4449
    const-string/jumbo v1, "subtypes"

    invoke-interface {v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4450
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_113

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4451
    .local v6, "imiId":Ljava/lang/String;
    if-eqz v2, :cond_68

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 4452
    const-string v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IME uninstalled or not valid.: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    goto :goto_3d

    .line 4455
    :cond_68
    const-string/jumbo v7, "imi"

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4456
    const-string/jumbo v7, "id"

    invoke-interface {v5, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4457
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4458
    .local v7, "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 4459
    .local v8, "N":I
    move v9, v0

    .line 4459
    .local v9, "i":I
    :goto_7f
    if-ge v9, v8, :cond_10b

    .line 4460
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4461
    .local v10, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v11, "subtype"

    invoke-interface {v5, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4462
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 4463
    const-string/jumbo v11, "subtypeId"

    .line 4464
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 4463
    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4466
    :cond_a1
    const-string/jumbo v11, "icon"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4467
    const-string/jumbo v11, "label"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4468
    const-string/jumbo v11, "imeSubtypeLocale"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4469
    const-string/jumbo v11, "languageTag"

    .line 4470
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v12

    .line 4469
    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4471
    const-string/jumbo v11, "imeSubtypeMode"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4472
    const-string/jumbo v11, "imeSubtypeExtraValue"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4473
    const-string/jumbo v11, "isAuxiliary"

    .line 4474
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 4473
    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4475
    const-string/jumbo v11, "isAsciiCapable"

    .line 4476
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 4475
    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4477
    const-string/jumbo v11, "subtype"

    invoke-interface {v5, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4459
    .end local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7f

    .line 4479
    .end local v9    # "i":I
    :cond_10b
    const-string/jumbo v9, "imi"

    invoke-interface {v5, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4480
    .end local v6    # "imiId":Ljava/lang/String;
    .end local v7    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v8    # "N":I
    goto/16 :goto_3d

    .line 4481
    :cond_113
    const-string/jumbo v0, "subtypes"

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4482
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4483
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_11f} :catch_120

    .line 4489
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_12d

    .line 4484
    :catch_120
    move-exception v0

    .line 4485
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InputMethodManagerService"

    const-string v3, "Error writing subtypes"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4486
    if-eqz v4, :cond_12d

    .line 4487
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4490
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12d
    :goto_12d
    return-void
.end method


# virtual methods
.method public addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 11
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "additionalSubtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 4413
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4414
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4415
    .local v1, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v2, p2

    .line 4416
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_41

    .line 4417
    aget-object v4, p2, v3

    .line 4418
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 4419
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 4421
    :cond_18
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4422
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4421
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 4425
    .end local v3    # "i":I
    :cond_41
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4426
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    invoke-static {v3, v4, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 4428
    .end local v1    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "N":I
    monitor-exit v0

    .line 4429
    return-void

    .line 4428
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method public getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .line 4432
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4433
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    monitor-exit v0

    return-object v1

    .line 4434
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
