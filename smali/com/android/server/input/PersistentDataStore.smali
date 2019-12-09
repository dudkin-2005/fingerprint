.class final Lcom/android/server/input/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mDirty:Z

.field private final mInputDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/input/PersistentDataStore$InputDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/input-manager-state.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "input-state"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    .line 81
    return-void
.end method

.method private clearState()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 205
    return-void
.end method

.method private getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 183
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 184
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 185
    new-instance v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    const/4 p2, 0x0

    invoke-direct {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$1;)V

    .line 186
    iget-object p2, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 189
    :cond_0
    return-object v0
.end method

.method private load()V
    .locals 4

    .line 208
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 215
    nop

    .line 219
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 220
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v1}, Lcom/android/server/input/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    .line 226
    :try_start_2
    const-string v2, "InputManager"

    const-string v3, "Failed to load input manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    goto :goto_0

    .line 222
    :catch_1
    move-exception v1

    .line 223
    const-string v2, "InputManager"

    const-string v3, "Failed to load input manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 230
    nop

    .line 231
    return-void

    .line 229
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 213
    :catch_2
    move-exception v0

    .line 214
    return-void
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 258
    const-string v0, "input-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 260
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "input-devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/input/PersistentDataStore;->loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 265
    :cond_1
    return-void
.end method

.method private loadIfNeeded()V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->load()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    .line 197
    :cond_0
    return-void
.end method

.method private loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 270
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "input-device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "descriptor"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_2

    .line 277
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    new-instance v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    invoke-direct {v3, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$1;)V

    .line 282
    invoke-virtual {v3, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 283
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    goto :goto_0

    .line 278
    :cond_1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Found duplicate input device."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Missing descriptor attribute on input-device."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_3
    return-void
.end method

.method private save()V
    .locals 4

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    nop

    .line 239
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 240
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, v1}, Lcom/android/server/input/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 242
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    nop

    .line 245
    nop

    .line 246
    :try_start_2
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 253
    goto :goto_0

    .line 245
    :catchall_0
    move-exception v1

    .line 248
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string v1, "InputManager"

    const-string v2, "Failed to save input manager persistent store data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :goto_0
    return-void
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 291
    const-string v0, "input-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    const-string v0, "input-devices"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 296
    const-string v4, "input-device"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    const-string v4, "descriptor"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 299
    const-string v1, "input-device"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    goto :goto_0

    .line 301
    :cond_0
    const-string v0, "input-devices"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    const-string v0, "input-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 304
    return-void
.end method

.method private setDirty()V
    .locals 1

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 201
    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 140
    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 142
    return v0

    .line 144
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getCurrentKeyboardLayout()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 131
    if-nez p1, :cond_0

    .line 132
    const-class p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getKeyboardLayouts()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 92
    if-nez p1, :cond_0

    .line 93
    sget-object p1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    return-object p1

    .line 96
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;

    move-result-object p1

    .line 97
    if-nez p1, :cond_1

    .line 98
    sget-object p1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    return-object p1

    .line 100
    :cond_1
    return-object p1
.end method

.method public removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 150
    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 152
    return v0

    .line 154
    :cond_0
    const/4 p1, 0x0

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

    .line 167
    nop

    .line 168
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 169
    invoke-virtual {v3, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    nop

    .line 172
    move v2, v4

    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    if-eqz v2, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 175
    return v4

    .line 177
    :cond_2
    return v1
.end method

.method public saveIfNeeded()V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->save()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 88
    :cond_0
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setCurrentKeyboardLayout(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 124
    return v0

    .line 126
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z
    .locals 1

    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 108
    return v0

    .line 111
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public switchKeyboardLayout(Ljava/lang/String;I)Z
    .locals 1

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->switchKeyboardLayout(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    .line 161
    const/4 p1, 0x1

    return p1

    .line 163
    :cond_0
    return v0
.end method
