.class public Lc8/zPg;
.super Ljava/lang/Object;
.source "FontFamilyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yPg;
    }
.end annotation


# static fields
.field public static final STRATEGY_ANY_NETWORK:I = 0x1

.field public static final STRATEGY_WIFI_ONLY:I = 0x2

.field private static sInstance:Lc8/zPg;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mCurrentStrategy:I

.field private mFontFamilyInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/uPg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lc8/zPg;->mCurrentStrategy:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/zPg;->mFontFamilyInfos:Ljava/util/HashMap;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/zPg;->mApplicationContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lc8/zPg;->fetchLocalResources()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lc8/zPg;[Lc8/uPg;)V
    .locals 0
    .param p0, "x0"    # Lc8/zPg;
    .param p1, "x1"    # [Lc8/uPg;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/zPg;->downloadAllFonts([Lc8/uPg;)V

    return-void
.end method

.method static synthetic access$100(Lc8/zPg;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/zPg;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/zPg;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildDownloadList(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/EPg;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lc8/Fmf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "typefaceInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/youku/arch/fontcompat/fontfamily/TypefaceInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, "downloadList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/downloader/request/Item;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/arch/fontcompat/fontfamily/TypefaceInfo;>;"
    new-instance v2, Lc8/Fmf;

    invoke-direct {v2}, Lc8/Fmf;-><init>()V

    .line 195
    .local v2, "item":Lc8/Fmf;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/EPg;

    invoke-virtual {v3}, Lc8/EPg;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/Fmf;->url:Ljava/lang/String;

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/arch/fontcompat/fontfamily/TypefaceInfo;>;"
    .end local v2    # "item":Lc8/Fmf;
    :cond_0
    return-object v0
.end method

.method private downloadAllFonts([Lc8/uPg;)V
    .locals 3
    .param p1, "fontFamilies"    # [Lc8/uPg;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v1, p0, Lc8/zPg;->mFontFamilyInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 114
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 115
    .local v0, "fontFamily":Lc8/uPg;
    invoke-direct {p0, v0}, Lc8/zPg;->downloadFontFamily(Lc8/uPg;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "fontFamily":Lc8/uPg;
    :cond_0
    return-void
.end method

.method private downloadFontFamily(Lc8/uPg;)V
    .locals 10
    .param p1, "fontFamily"    # Lc8/uPg;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 121
    if-eqz p1, :cond_0

    iget-object v4, p1, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v0, "downloadQueue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/arch/fontcompat/fontfamily/TypefaceInfo;>;"
    iget-object v7, p1, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    array-length v8, v7

    move v4, v6

    :goto_0
    if-ge v4, v8, :cond_3

    aget-object v3, v7, v4

    .line 125
    .local v3, "typefaceInfo":Lc8/EPg;
    invoke-virtual {v3}, Lc8/EPg;->getFilePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 126
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lc8/EPg;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "localTypefaceFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 184
    .end local v0    # "downloadQueue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/arch/fontcompat/fontfamily/TypefaceInfo;>;"
    .end local v1    # "localTypefaceFile":Ljava/io/File;
    .end local v3    # "typefaceInfo":Lc8/EPg;
    :cond_0
    :goto_1
    return-void

    .line 130
    .restart local v0    # "downloadQueue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/arch/fontcompat/fontfamily/TypefaceInfo;>;"
    .restart local v3    # "typefaceInfo":Lc8/EPg;
    :cond_1
    invoke-virtual {v3}, Lc8/EPg;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 131
    invoke-virtual {v3}, Lc8/EPg;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "typefaceInfo":Lc8/EPg;
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 136
    new-instance v2, Lc8/Emf;

    invoke-direct {v2}, Lc8/Emf;-><init>()V

    .line 137
    .local v2, "request":Lc8/Emf;
    invoke-direct {p0, v0}, Lc8/zPg;->buildDownloadList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lc8/Emf;->downloadList:Ljava/util/List;

    .line 138
    new-instance v4, Lcom/taobao/downloader/request/Param;

    invoke-direct {v4}, Lcom/taobao/downloader/request/Param;-><init>()V

    iput-object v4, v2, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    .line 140
    iget-object v4, v2, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "download_fonts_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lc8/uPg;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    .line 141
    iget-object v7, v2, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget v4, p0, Lc8/zPg;->mCurrentStrategy:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    move v4, v5

    :goto_2
    iput v4, v7, Lcom/taobao/downloader/request/Param;->network:I

    .line 142
    iget-object v4, v2, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iput v6, v4, Lcom/taobao/downloader/request/Param;->callbackCondition:I

    .line 143
    iget-object v4, v2, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iput-boolean v5, v4, Lcom/taobao/downloader/request/Param;->foreground:Z

    .line 144
    iget-object v4, v2, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    const/16 v5, 0x14

    iput v5, v4, Lcom/taobao/downloader/request/Param;->priority:I

    .line 145
    iget-object v4, v2, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lc8/zPg;->getStorePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lc8/uPg;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    .line 147
    invoke-static {}, Lc8/Jlf;->getInstance()Lc8/Jlf;

    move-result-object v4

    new-instance v5, Lc8/wPg;

    invoke-direct {v5, p0, v0, p1}, Lc8/wPg;-><init>(Lc8/zPg;Ljava/util/HashMap;Lc8/uPg;)V

    invoke-virtual {v4, v2, v5}, Lc8/Jlf;->download(Lc8/Emf;Lc8/Dmf;)I

    goto/16 :goto_1

    .line 141
    :cond_4
    const/4 v4, 0x7

    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/zPg;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lc8/zPg;->sInstance:Lc8/zPg;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lc8/zPg;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lc8/zPg;->sInstance:Lc8/zPg;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lc8/zPg;

    invoke-direct {v0, p0}, Lc8/zPg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/zPg;->sInstance:Lc8/zPg;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lc8/zPg;->sInstance:Lc8/zPg;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getStorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lc8/zPg;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/APg;->getDefaultStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetchFontResources()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lc8/vPg;

    iget-object v1, p0, Lc8/zPg;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lc8/vPg;-><init>(Lc8/zPg;Landroid/content/Context;)V

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lc8/Vcf;->execute(Ljava/lang/Runnable;I)V

    .line 103
    return-void
.end method

.method public fetchLocalResources()V
    .locals 6

    .prologue
    .line 75
    iget-object v2, p0, Lc8/zPg;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/APg;->retrieveInfos(Landroid/content/Context;)[Lc8/uPg;

    move-result-object v0

    .line 77
    .local v0, "fontFamilyInfos":[Lc8/uPg;
    if-eqz v0, :cond_1

    .line 78
    iget-object v2, p0, Lc8/zPg;->mFontFamilyInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 79
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 80
    .local v1, "info":Lc8/uPg;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lc8/zPg;->mFontFamilyInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Lc8/uPg;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "info":Lc8/uPg;
    :cond_1
    return-void
.end method

.method public getFontFamilyInfo(Ljava/lang/String;)Lc8/uPg;
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/zPg;->mFontFamilyInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/zPg;->fetchLocalResources()V

    .line 71
    :cond_0
    iget-object v0, p0, Lc8/zPg;->mFontFamilyInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/uPg;

    return-object v0
.end method
