.class public Lc8/ngg;
.super Ljava/lang/Object;
.source "TypefaceUtil.java"


# static fields
.field public static final ACTION_TYPE_FACE_AVAILABLE:Ljava/lang/String; = "type_face_available"

.field public static final FONT_CACHE_DIR_NAME:Ljava/lang/String; = "font-family"

.field private static final TAG:Ljava/lang/String; = "TypefaceUtil"

.field private static final sCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Tfg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/ngg;->sCacheMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lc8/ngg;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lc8/ngg;->sCacheMap:Ljava/util/Map;

    return-object v0
.end method

.method public static applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V
    .locals 5
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I
    .param p2, "weight"    # I
    .param p3, "family"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 63
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-nez v1, :cond_5

    .line 64
    const/4 v0, 0x0

    .line 69
    .local v0, "oldStyle":I
    :goto_0
    const/4 v2, 0x0

    .line 70
    .local v2, "want":I
    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    if-ne p2, v4, :cond_1

    .line 72
    :cond_0
    or-int/lit8 v2, v2, 0x1

    .line 75
    :cond_1
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    if-ne p1, v4, :cond_3

    .line 77
    :cond_2
    or-int/lit8 v2, v2, 0x2

    .line 80
    :cond_3
    if-eqz p3, :cond_4

    .line 81
    invoke-static {p3, v2}, Lc8/ngg;->getOrCreateTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 84
    :cond_4
    if-eqz v1, :cond_6

    .line 85
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 89
    :goto_1
    return-void

    .line 66
    .end local v0    # "oldStyle":I
    .end local v2    # "want":I
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .restart local v0    # "oldStyle":I
    goto :goto_0

    .line 87
    .restart local v2    # "want":I
    :cond_6
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1
.end method

.method private static downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fullPath"    # Ljava/lang/String;
    .param p2, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/pVf;->getIWXHttpAdapter()Lc8/DVf;

    move-result-object v0

    .line 147
    .local v0, "adapter":Lc8/DVf;
    if-nez v0, :cond_0

    .line 148
    const-string/jumbo v2, "TypefaceUtil"

    const-string/jumbo v3, "downloadFontByNetwork() IWXHttpAdapter == null"

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Lc8/QXf;

    invoke-direct {v1}, Lc8/QXf;-><init>()V

    .line 152
    .local v1, "request":Lc8/QXf;
    iput-object p0, v1, Lc8/QXf;->url:Ljava/lang/String;

    .line 153
    const-string/jumbo v2, "GET"

    iput-object v2, v1, Lc8/QXf;->method:Ljava/lang/String;

    .line 154
    new-instance v2, Lc8/mgg;

    invoke-direct {v2, p0, p1, p2}, Lc8/mgg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lc8/DVf;->sendRequest(Lc8/QXf;Lc8/CVf;)V

    goto :goto_0
.end method

.method private static getFontCacheDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/UUf;->getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "font-family"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFontDO(Ljava/lang/String;)Lc8/Tfg;
    .locals 1
    .param p0, "fontFamilyName"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lc8/ngg;->sCacheMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Tfg;

    return-object v0
.end method

.method public static getOrCreateTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "family"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 92
    sget-object v1, Lc8/ngg;->sCacheMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Tfg;

    .line 93
    .local v0, "fontDo":Lc8/Tfg;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Tfg;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lc8/Tfg;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadFromAsset(Lc8/Tfg;Ljava/lang/String;)V
    .locals 5
    .param p0, "fontDo"    # Lc8/Tfg;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 103
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_1

    .line 104
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string/jumbo v2, "TypefaceUtil"

    const-string/jumbo v3, "load asset file success"

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lc8/Tfg;->setState(I)V

    .line 108
    invoke-virtual {p0, v1}, Lc8/Tfg;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :goto_0
    return-void

    .line 110
    .restart local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    const-string/jumbo v2, "TypefaceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Font asset file not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lc8/Tfg;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TypefaceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v5

    .line 217
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 222
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_3

    .line 223
    sget-object v6, Lc8/ngg;->sCacheMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Tfg;

    .line 224
    .local v2, "fontDo":Lc8/Tfg;
    if-eqz v2, :cond_0

    .line 225
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lc8/Tfg;->setState(I)V

    .line 226
    invoke-virtual {v2, v4}, Lc8/Tfg;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 228
    const-string/jumbo v6, "TypefaceUtil"

    const-string/jumbo v7, "load local font file success"

    invoke-static {v6, v7}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "type_face_available"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "fontFamily"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 234
    const/4 v5, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "fontDo":Lc8/Tfg;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v6, "TypefaceUtil"

    const-string/jumbo v7, "load local font file failed, can\'t create font."

    invoke-static {v6, v7}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TypefaceUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadTypeface(Lc8/Tfg;)V
    .locals 11
    .param p0, "fontDo"    # Lc8/Tfg;

    .prologue
    const/16 v10, 0x5f

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 118
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lc8/Tfg;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lc8/Tfg;->getState()I

    move-result v7

    if-eq v7, v9, :cond_0

    invoke-virtual {p0}, Lc8/Tfg;->getState()I

    move-result v7

    if-nez v7, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0, v8}, Lc8/Tfg;->setState(I)V

    .line 121
    invoke-virtual {p0}, Lc8/Tfg;->getType()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 122
    invoke-virtual {p0}, Lc8/Tfg;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 123
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lc8/ngg;->loadFromAsset(Lc8/Tfg;Ljava/lang/String;)V

    .line 143
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-virtual {p0}, Lc8/Tfg;->getType()I

    move-result v7

    if-ne v7, v8, :cond_4

    .line 125
    invoke-virtual {p0}, Lc8/Tfg;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/Tfg;->getFontFamilyName()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "fontFamily":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc8/ngg;->getFontCacheDir()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "fullPath":Ljava/lang/String;
    invoke-static {v3, v2}, Lc8/ngg;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 134
    invoke-static {v6, v3, v2}, Lc8/ngg;->downloadFontByNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fontFamily":Ljava/lang/String;
    .end local v3    # "fullPath":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lc8/Tfg;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 137
    invoke-virtual {p0}, Lc8/Tfg;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lc8/Tfg;->getFontFamilyName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ngg;->loadLocalFontFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 138
    .local v4, "result":Z
    if-nez v4, :cond_1

    .line 139
    invoke-virtual {p0, v9}, Lc8/Tfg;->setState(I)V

    goto :goto_0
.end method

.method public static putFontDO(Lc8/Tfg;)V
    .locals 2
    .param p0, "fontDO"    # Lc8/Tfg;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lc8/Tfg;->getFontFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lc8/ngg;->sCacheMap:Ljava/util/Map;

    invoke-virtual {p0}, Lc8/Tfg;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    return-void
.end method
