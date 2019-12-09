.class public final Lcom/android/server/OnePlusNfcService;
.super Lcom/oem/os/IOnePlusNfcService$Stub;
.source "OnePlusNfcService.java"


# static fields
.field public static final CARD_CONFIG_PATH:Ljava/lang/String; = "/etc/nfc_card_config.conf"

.field public static final CARD_CONFIG_PRODUCT_PROPERTY:Ljava/lang/String; = "vendor.oem.nfc.rf.card.productline"

.field public static final CARD_CONFIG_PROPERTY:Ljava/lang/String; = "persist.vendor.oem.nfc.rf.card"

.field public static final DIAL_911_FLAG:I = 0x47

.field private static final ENG_RESULT_FILE_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/ENG_RESULT"

.field public static final ENG_RESULT_LENGTH:I = 0x80

.field private static final ENG_RESULT_ROOT_FILE_PATH:Ljava/io/File;

.field private static final ENG_RESULT_ROOT_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCardConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const-string v0, "OnePlusNfcService"

    sput-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/vendor/persist/engineermode/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusNfcService;->ENG_RESULT_ROOT_FILE_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/oem/os/IOnePlusNfcService$Stub;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    .line 173
    new-instance v0, Lcom/android/server/OnePlusNfcService$1;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusNfcService$1;-><init>(Lcom/android/server/OnePlusNfcService;)V

    iput-object v0, p0, Lcom/android/server/OnePlusNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusNfcService;

    .line 33
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/OnePlusNfcService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusNfcService;

    .line 33
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private getCurrentConfig()Ljava/lang/String;
    .registers 3

    .line 135
    const-string/jumbo v0, "persist.vendor.oem.nfc.rf.card"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "config":Ljava/lang/String;
    return-object v0
.end method

.method public static getProductLineTestFlag()[B
    .registers 7

    .line 219
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 220
    .local v0, "result":[B
    sget-object v1, Lcom/android/server/OnePlusNfcService;->ENG_RESULT_ROOT_FILE_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d2

    sget-object v1, Lcom/android/server/OnePlusNfcService;->ENG_RESULT_ROOT_FILE_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_d2

    .line 224
    :cond_17
    move-object v1, v2

    .line 226
    .local v1, "result_file":Ljava/io/RandomAccessFile;
    :try_start_18
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_22} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_22} :catch_24

    move-object v1, v2

    goto :goto_5f

    .line 231
    :catch_24
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, 0x0

    .line 234
    const/4 v0, 0x0

    .line 234
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_60

    .line 227
    :catch_42
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag FileNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    .line 230
    const/4 v0, 0x0

    .line 235
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_5f
    nop

    .line 237
    :goto_60
    if-eqz v1, :cond_d1

    .line 239
    :try_start_62
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_74
    .catchall {:try_start_62 .. :try_end_65} :catchall_72

    .line 245
    :try_start_65
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_93

    .line 246
    :catch_69
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9c

    .line 244
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_72
    move-exception v2

    goto :goto_b0

    .line 240
    :catch_74
    move-exception v2

    .line 241
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_75
    sget-object v3, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_72

    .line 242
    const/4 v0, 0x0

    .line 245
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_90
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 248
    :goto_93
    goto :goto_d1

    .line 246
    :catch_94
    move-exception v2

    .line 247
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9c
    const-string v5, "getProductLineTestFlag IOException while close : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_d1

    .line 244
    :goto_b0
    nop

    .line 245
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    .line 248
    goto :goto_d0

    .line 246
    :catch_b5
    move-exception v3

    .line 247
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProductLineTestFlag IOException while close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v3    # "e":Ljava/io/IOException;
    :goto_d0
    throw v2

    .line 251
    :cond_d1
    :goto_d1
    return-object v0

    .line 221
    .end local v1    # "result_file":Ljava/io/RandomAccessFile;
    :cond_d2
    :goto_d2
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/OnePlusNfcService;->ENG_RESULT_ROOT_FILE_PATH:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "is invalid!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-object v2
.end method

.method public static hasDial911()Z
    .registers 3

    .line 211
    invoke-static {}, Lcom/android/server/OnePlusNfcService;->getProductLineTestFlag()[B

    move-result-object v0

    .line 212
    .local v0, "flags":[B
    if-eqz v0, :cond_11

    array-length v1, v0

    const/16 v2, 0x47

    if-le v1, v2, :cond_11

    aget-byte v1, v0, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 213
    return v2

    .line 215
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private loadConfigMap()V
    .registers 1

    .line 115
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->parseConfigs()Z

    .line 116
    invoke-virtual {p0}, Lcom/android/server/OnePlusNfcService;->dumpConfigs()V

    .line 117
    return-void
.end method

.method private parseConfigs()Z
    .registers 13

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/nfc_card_config.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 142
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string v2, "[parseConfigs] config file /etc/nfc_card_config.conf not exists"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    return v1

    .line 145
    :cond_1a
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string v2, "[parseConfigs]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "reader":Ljava/io/FileReader;
    const/4 v2, 0x0

    move-object v3, v2

    .line 150
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x1

    :try_start_25
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 151
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 152
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v7

    .line 153
    invoke-interface {v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 155
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 156
    .local v7, "eventType":I
    :goto_3a
    if-eq v7, v4, :cond_64

    .line 157
    const/4 v8, 0x2

    if-ne v7, v8, :cond_5b

    .line 158
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "name":Ljava/lang/String;
    const-string v9, "config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4c

    .end local v8    # "name":Ljava/lang/String;
    goto :goto_3a

    .line 161
    .restart local v8    # "name":Ljava/lang/String;
    :cond_4c
    const-string v9, "cardtype"

    invoke-interface {v6, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "type":Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, "config":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "config":Ljava/lang/String;
    :cond_5b
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_5f} :catch_63
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5f} :catch_61

    move v7, v8

    goto :goto_3a

    .line 168
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "eventType":I
    :catch_61
    move-exception v2

    goto :goto_65

    .line 167
    :catch_63
    move-exception v2

    .line 168
    :cond_64
    nop

    .line 170
    :goto_65
    return v4
.end method

.method private resetNfcService()V
    .registers 9

    .line 120
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 121
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_29

    .line 127
    :cond_f
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OnePlusNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 132
    return-void

    .line 122
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_29
    :goto_29
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string v2, "[resetNfcService] nfc is disable,no need to reset"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method


# virtual methods
.method public applyConfig()Z
    .registers 3

    .line 103
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string v1, "[applyConfig]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public dumpConfigs()V
    .registers 8

    .line 191
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, "iter":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "type":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    .local v3, "config":Ljava/lang/String;
    sget-object v4, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dumpConfigs] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "config":Ljava/lang/String;
    goto :goto_a

    .line 198
    :cond_41
    return-void
.end method

.method public getDieId()Ljava/lang/String;
    .registers 3

    .line 109
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string v1, "[getDieid]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 111
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getDieId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSupportCardTypes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string v1, "[getSupportCardTypes]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "cardTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getSupportNfcConfigs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string v1, "[getSupportNfcConfigs]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCardType(Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCardType] type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "config":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusNfcService;->setNfcConfig(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setNfcConfig(Ljava/lang/String;)V
    .registers 6
    .param p1, "config"    # Ljava/lang/String;

    .line 57
    if-nez p1, :cond_4

    .line 58
    const-string p1, ""

    .line 61
    :cond_4
    const-string/jumbo v0, "persist.vendor.oem.nfc.rf.card"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "currentConfig":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 63
    return-void

    .line 66
    :cond_14
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setNfcConfig] config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string/jumbo v1, "productline"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 68
    const-string/jumbo v1, "vendor.oem.nfc.rf.card.productline"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 70
    :cond_3a
    const-string/jumbo v1, "vendor.oem.nfc.rf.card.productline"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "persist.vendor.oem.nfc.rf.card"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_48
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->resetNfcService()V

    .line 74
    return-void
.end method

.method public setSupportCardTypes(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "cardTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSupportCardTypes] cardTypes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public systemRunning()V
    .registers 3

    .line 47
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string v1, "[systemRunning]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->loadConfigMap()V

    .line 50
    invoke-static {}, Lcom/android/server/OnePlusNfcService;->hasDial911()Z

    move-result v0

    if-nez v0, :cond_16

    .line 51
    const-string/jumbo v0, "productline"

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusNfcService;->setNfcConfig(Ljava/lang/String;)V

    .line 53
    :cond_16
    return-void
.end method
