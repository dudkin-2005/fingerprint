.class final Lcom/android/server/input/PersistentDataStore$InputDeviceState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CALIBRATION_NAME:[Ljava/lang/String;


# instance fields
.field private mCurrentKeyboardLayout:Ljava/lang/String;

.field private mKeyboardLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchCalibration:[Landroid/hardware/input/TouchCalibration;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 306
    const-class v0, Lcom/android/server/input/PersistentDataStore;

    .line 307
    const-string/jumbo v1, "x_scale"

    const-string/jumbo v2, "x_ymix"

    const-string/jumbo v3, "x_offset"

    const-string/jumbo v4, "y_xmix"

    const-string/jumbo v5, "y_scale"

    const-string/jumbo v6, "y_offset"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/input/TouchCalibration;

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/PersistentDataStore$1;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>()V

    return-void
.end method

.method private static stringToSurfaceRotation(Ljava/lang/String;)I
    .locals 3

    .line 547
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 p0, 0x0

    return p0

    .line 550
    :cond_0
    const-string v0, "90"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    const/4 p0, 0x1

    return p0

    .line 553
    :cond_1
    const-string v0, "180"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    const/4 p0, 0x2

    return p0

    .line 556
    :cond_2
    const-string v0, "270"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    const/4 p0, 0x3

    return p0

    .line 559
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static surfaceRotationToString(I)Ljava/lang/String;
    .locals 3

    .line 537
    packed-switch p0, :pswitch_data_0

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :pswitch_0
    const-string p0, "270"

    return-object p0

    .line 540
    :pswitch_1
    const-string p0, "180"

    return-object p0

    .line 539
    :pswitch_2
    const-string p0, "90"

    return-object p0

    .line 538
    :pswitch_3
    const-string p0, "0"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 383
    iget-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 384
    nop

    .line 385
    iget-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 386
    const/4 p2, 0x0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 389
    goto :goto_0

    .line 390
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 393
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;)Z
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 360
    if-ltz v0, :cond_0

    .line 361
    const/4 p1, 0x0

    return p1

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    neg-int v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 365
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 367
    :cond_1
    return v2
.end method

.method public getCurrentKeyboardLayout()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardLayouts()[Ljava/lang/String;
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;
    .locals 2

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 318
    :catch_0
    move-exception p1

    .line 319
    const-string v0, "InputManager"

    const-string v1, "Cannot get touch calibration."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 427
    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 428
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    .line 429
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "keyboard-layout"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 430
    const-string v3, "descriptor"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    if-eqz v3, :cond_4

    .line 435
    const-string v4, "current"

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 441
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    if-eqz v4, :cond_2

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    iget-object v4, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 447
    iput-object v3, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    goto :goto_1

    .line 444
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Found multiple current keyboard layouts."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_2
    :goto_1
    goto :goto_0

    .line 437
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Found duplicate keyboard layout."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Missing descriptor attribute on keyboard-layout."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "calibration"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    const-string v3, "format"

    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    const-string/jumbo v6, "rotation"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    nop

    .line 454
    if-eqz v3, :cond_d

    .line 458
    const-string v6, "affine"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 462
    const/4 v3, -0x1

    if-eqz v5, :cond_6

    .line 464
    :try_start_0
    invoke-static {v5}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->stringToSurfaceRotation(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    goto :goto_2

    .line 465
    :catch_0
    move-exception v0

    .line 466
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unsupported rotation for calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_6
    move v5, v3

    :goto_2
    sget-object v6, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    invoke-virtual {v6}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v6

    .line 472
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 473
    :goto_3
    invoke-static {v1, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 474
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 475
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 477
    move v10, v4

    :goto_4
    array-length v11, v6

    if-ge v10, v11, :cond_8

    sget-object v11, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_8

    .line 478
    sget-object v11, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    aget-object v11, v11, v10

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 479
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v6, v10

    .line 480
    goto :goto_5

    .line 477
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 483
    :cond_8
    :goto_5
    goto :goto_3

    .line 485
    :cond_9
    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v5, v3, :cond_a

    .line 487
    move v3, v4

    :goto_6
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v5, v5

    if-ge v3, v5, :cond_b

    .line 488
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    new-instance v19, Landroid/hardware/input/TouchCalibration;

    aget v13, v6, v4

    aget v14, v6, v11

    aget v15, v6, v10

    aget v16, v6, v9

    aget v17, v6, v8

    aget v18, v6, v7

    move-object/from16 v12, v19

    invoke-direct/range {v12 .. v18}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v19, v5, v3

    .line 487
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 492
    :cond_a
    iget-object v3, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    new-instance v19, Landroid/hardware/input/TouchCalibration;

    aget v13, v6, v4

    aget v14, v6, v11

    aget v15, v6, v10

    aget v16, v6, v9

    aget v17, v6, v8

    aget v18, v6, v7

    move-object/from16 v12, v19

    invoke-direct/range {v12 .. v18}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v19, v3, v5

    .line 495
    :cond_b
    goto/16 :goto_0

    .line 459
    :cond_c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unsupported format for calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Missing format attribute on calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_e
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 503
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 504
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 506
    :cond_f
    return-void
.end method

.method public removeKeyboardLayout(Ljava/lang/String;)Z
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 372
    if-gez v0, :cond_0

    .line 373
    const/4 p1, 0x0

    return p1

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 376
    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    .line 377
    const/4 p1, 0x1

    return p1
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 412
    nop

    .line 413
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    const-string v1, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing uninstalled keyboard layout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    invoke-direct {p0, v0, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->updateCurrentKeyboardLayoutIfRemoved(Ljava/lang/String;I)V

    .line 419
    const/4 v0, 0x1

    .line 421
    move v1, v0

    .line 413
    :cond_0
    move v0, v2

    goto :goto_0

    .line 422
    :cond_1
    return v1
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    const-string v3, "keyboard-layout"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const-string v3, "descriptor"

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const-string v1, "current"

    const-string/jumbo v3, "true"

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    :cond_0
    const-string v1, "keyboard-layout"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    goto :goto_0

    .line 518
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 519
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 520
    invoke-static {v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->surfaceRotationToString(I)Ljava/lang/String;

    move-result-object v3

    .line 521
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v4

    .line 523
    const-string v5, "calibration"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    const-string v5, "format"

    const-string v6, "affine"

    invoke-interface {p1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    const-string/jumbo v5, "rotation"

    invoke-interface {p1, v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    move v3, v0

    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_2

    sget-object v5, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 527
    sget-object v5, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    aget v5, v4, v3

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    sget-object v5, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 531
    :cond_2
    const-string v3, "calibration"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 534
    :cond_4
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;)Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 p1, 0x0

    return p1

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    .line 347
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 348
    const/4 p1, 0x1

    return p1
.end method

.method public setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z
    .locals 2

    .line 326
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/hardware/input/TouchCalibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aput-object p2, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    const/4 p1, 0x1

    return p1

    .line 330
    :cond_0
    return v0

    .line 331
    :catch_0
    move-exception p1

    .line 332
    const-string p2, "InputManager"

    const-string v1, "Cannot set touch calibration."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return v0
.end method

.method public switchKeyboardLayout(I)Z
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 397
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 398
    const/4 p1, 0x0

    return p1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 401
    nop

    .line 402
    const/4 v2, 0x1

    if-lez p1, :cond_1

    .line 403
    add-int/2addr v1, v2

    rem-int/2addr v1, v0

    goto :goto_0

    .line 405
    :cond_1
    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/2addr v1, v0

    .line 407
    :goto_0
    iget-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mCurrentKeyboardLayout:Ljava/lang/String;

    .line 408
    return v2
.end method
