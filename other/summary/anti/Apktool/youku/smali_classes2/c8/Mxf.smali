.class public Lc8/Mxf;
.super Ljava/lang/Object;
.source "SchemeInfo.java"


# static fields
.field private static final BASE64_SCHEME_PREFIX:Ljava/lang/String; = "data:image/"

.field private static final BASE64_SCHEME_PREFIX_LENGTH:I = 0xb

.field private static final BASE64_SCHEME_SUFFIX:Ljava/lang/String; = ";base64,"

.field private static final BASE64_SCHEME_SUFFIX_LENGTH:I = 0x8

.field private static final LOCAL_ASSET_SCHEME:Ljava/lang/String; = "asset://"

.field private static final LOCAL_ASSET_SCHEME_LENGTH:I = 0x8

.field private static final LOCAL_FILE_SCHEME:Ljava/lang/String; = "file://"

.field private static final LOCAL_FILE_SCHEME_LENGTH:I = 0x7

.field private static final LOCAL_RES_SCHEME:Ljava/lang/String; = "res://"

.field private static final LOCAL_RES_SCHEME_LENGTH:I = 0x6

.field public static final LOCAL_URI:I = 0x20

.field public static final NETWORK_URI:I = 0x1

.field private static final TARGET_CDN_DOMAIN_PREFIX:Ljava/lang/String; = "//gw.alicdn.com"

.field private static final TARGET_CDN_MAX_SIDE:I = 0x2710

.field private static final TARGET_CDN_WEBP_SUFFIX:Ljava/lang/String; = "_.webp"

.field private static final X_CONCAT_CHAR:C = 'x'


# instance fields
.field public base64:Ljava/lang/String;

.field public baseName:Ljava/lang/String;

.field public extension:Ljava/lang/String;

.field public handleIndex:I

.field public height:I

.field public isCdnSize:Z

.field public path:Ljava/lang/String;

.field public quality:I

.field public resId:I

.field public thumbnailType:I

.field public final type:I

.field public useOriginIfThumbNotExist:Z

.field public width:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Mxf;->extension:Ljava/lang/String;

    .line 37
    iput p1, p0, Lc8/Mxf;->type:I

    .line 38
    return-void
.end method

.method private static isMatchOssRule(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "valuePos"    # I

    .prologue
    const/4 v1, 0x1

    .line 281
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 285
    .local v0, "next":C
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lc8/Mxf;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-static {p0}, Lc8/Mxf;->parseLocalFile(Ljava/lang/String;)Lc8/Mxf;

    move-result-object v0

    .local v0, "scheme":Lc8/Mxf;
    if-nez v0, :cond_0

    invoke-static {p0}, Lc8/Mxf;->parseAssetFile(Ljava/lang/String;)Lc8/Mxf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Lc8/Mxf;->parseResFile(Ljava/lang/String;)Lc8/Mxf;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lc8/Mxf;->parseBase64(Ljava/lang/String;)Lc8/Mxf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {p0}, Lc8/Mxf;->parseLocalExtended(Ljava/lang/String;)Lc8/Mxf;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, v0

    .line 80
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lc8/Mxf;->parseHttpUrl(Ljava/lang/String;)Lc8/Mxf;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseAssetFile(Ljava/lang/String;)Lc8/Mxf;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    const-string/jumbo v1, "asset://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 128
    :cond_0
    new-instance v0, Lc8/Mxf;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lc8/Mxf;-><init>(I)V

    .line 129
    .local v0, "scheme":Lc8/Mxf;
    iput-object p0, v0, Lc8/Mxf;->baseName:Ljava/lang/String;

    .line 130
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/Mxf;->path:Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lc8/Mxf;->parseExtend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/Mxf;->extension:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseBase64(Ljava/lang/String;)Lc8/Mxf;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0xb

    .line 154
    const-string/jumbo v2, "data:image/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ";base64,"

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .local v0, "index":I
    if-lez v0, :cond_0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    .line 155
    new-instance v1, Lc8/Mxf;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lc8/Mxf;-><init>(I)V

    .line 156
    .local v1, "scheme":Lc8/Mxf;
    add-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Mxf;->base64:Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "hash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lc8/Mxf;->base64:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Mxf;->baseName:Ljava/lang/String;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Mxf;->extension:Ljava/lang/String;

    .line 162
    .end local v0    # "index":I
    .end local v1    # "scheme":Lc8/Mxf;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseExtend(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 166
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 167
    .local v0, "extendDot":I
    if-lez v0, :cond_0

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static parseHttpUrl(Ljava/lang/String;)Lc8/Mxf;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    .line 180
    new-instance v4, Lc8/Mxf;

    invoke-direct {v4, v9}, Lc8/Mxf;-><init>(I)V

    .line 181
    .local v4, "scheme":Lc8/Mxf;
    iput-object p0, v4, Lc8/Mxf;->baseName:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 186
    .local v5, "total":I
    const/16 v6, 0x3f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "questionIdx":I
    if-gez v3, :cond_0

    .line 187
    move v3, v5

    .line 189
    :cond_0
    const/16 v6, 0x2f

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 190
    .local v2, "lastSplash":I
    if-ltz v2, :cond_1

    add-int/lit8 v6, v5, -0x1

    if-lt v2, v6, :cond_2

    .line 208
    :cond_1
    :goto_0
    return-object v4

    .line 194
    :cond_2
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "lastName":Ljava/lang/String;
    invoke-static {v1}, Lc8/Mxf;->parseExtend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lc8/Mxf;->extension:Ljava/lang/String;

    .line 199
    invoke-static {v1, v4}, Lc8/Mxf;->parseTfsRule(Ljava/lang/String;Lc8/Mxf;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p0, v2, v1, v4}, Lc8/Mxf;->parseOssRule(Ljava/lang/String;ILjava/lang/String;Lc8/Mxf;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "//gw.alicdn.com"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "domainIdx":I
    if-ltz v0, :cond_1

    const/4 v6, 0x6

    if-gt v0, v6, :cond_1

    .line 200
    const-string/jumbo v6, "_.webp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, "_.webp"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lc8/Mxf;->baseName:Ljava/lang/String;

    .line 205
    :goto_1
    const/16 v6, 0x2710

    iput v6, v4, Lc8/Mxf;->height:I

    iput v6, v4, Lc8/Mxf;->width:I

    .line 206
    iput-boolean v9, v4, Lc8/Mxf;->isCdnSize:Z

    goto :goto_0

    .line 203
    :cond_3
    iput-object v1, v4, Lc8/Mxf;->baseName:Ljava/lang/String;

    goto :goto_1
.end method

.method private static parseLocalExtended(Ljava/lang/String;)Lc8/Mxf;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ixf;->getExtendedSchemeHandlers()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/phenix/loader/LocalSchemeHandler;>;"
    if-eqz v1, :cond_1

    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "index":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xxf;

    .line 96
    .local v0, "h":Lc8/xxf;
    invoke-interface {v0, p0}, Lc8/xxf;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    new-instance v3, Lc8/Mxf;

    const/16 v4, 0x30

    invoke-direct {v3, v4}, Lc8/Mxf;-><init>(I)V

    .line 98
    .local v3, "scheme":Lc8/Mxf;
    iput v2, v3, Lc8/Mxf;->handleIndex:I

    .line 99
    iput-object p0, v3, Lc8/Mxf;->baseName:Ljava/lang/String;

    .line 105
    .end local v0    # "h":Lc8/xxf;
    .end local v2    # "index":I
    .end local v3    # "scheme":Lc8/Mxf;
    :goto_1
    return-object v3

    .line 102
    .restart local v0    # "h":Lc8/xxf;
    .restart local v2    # "index":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_0

    .line 105
    .end local v0    # "h":Lc8/xxf;
    .end local v2    # "index":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static parseLocalFile(Ljava/lang/String;)Lc8/Mxf;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x2f

    const/4 v3, 0x1

    .line 109
    const-string/jumbo v2, "file:///"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 110
    .local v1, "starts":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    .line 111
    :cond_0
    new-instance v0, Lc8/Mxf;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Lc8/Mxf;-><init>(I)V

    .line 112
    .local v0, "scheme":Lc8/Mxf;
    invoke-static {p0}, Lc8/Mxf;->parseExtend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/Mxf;->extension:Ljava/lang/String;

    .line 113
    if-eqz v1, :cond_1

    .line 114
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/Mxf;->path:Ljava/lang/String;

    .line 118
    :goto_0
    iget-object v2, v0, Lc8/Mxf;->path:Ljava/lang/String;

    iput-object v2, v0, Lc8/Mxf;->baseName:Ljava/lang/String;

    .line 121
    .end local v0    # "scheme":Lc8/Mxf;
    :goto_1
    return-object v0

    .line 116
    .restart local v0    # "scheme":Lc8/Mxf;
    :cond_1
    iput-object p0, v0, Lc8/Mxf;->path:Ljava/lang/String;

    goto :goto_0

    .line 121
    .end local v0    # "scheme":Lc8/Mxf;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseOssRule(Ljava/lang/String;ILjava/lang/String;Lc8/Mxf;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "lastSplash"    # I
    .param p2, "lastName"    # Ljava/lang/String;
    .param p3, "scheme"    # Lc8/Mxf;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 248
    const/16 v4, 0x40

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 249
    .local v0, "atIdx":I
    if-ltz v0, :cond_0

    const/16 v4, 0x2d

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gtz v4, :cond_0

    const/16 v4, 0x7c

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gtz v4, :cond_0

    const-string/jumbo v4, "_2e"

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    move v2, v3

    .line 263
    :goto_0
    return v2

    .line 252
    :cond_1
    const/16 v4, 0x77

    invoke-static {p2, v0, v4}, Lc8/Mxf;->traverseOssSize(Ljava/lang/String;IC)I

    move-result v4

    iput v4, p3, Lc8/Mxf;->width:I

    if-eqz v4, :cond_4

    const/16 v4, 0x68

    invoke-static {p2, v0, v4}, Lc8/Mxf;->traverseOssSize(Ljava/lang/String;IC)I

    move-result v4

    iput v4, p3, Lc8/Mxf;->height:I

    if-eqz v4, :cond_4

    iget v4, p3, Lc8/Mxf;->width:I

    iget v5, p3, Lc8/Mxf;->height:I

    if-ne v4, v5, :cond_4

    .line 253
    iput-boolean v2, p3, Lc8/Mxf;->isCdnSize:Z

    .line 256
    const-string/jumbo v3, "//"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, "subStart":I
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    .line 258
    :cond_2
    const/4 v1, 0x0

    .line 260
    :cond_3
    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lc8/Mxf;->baseName:Ljava/lang/String;

    goto :goto_0

    .end local v1    # "subStart":I
    :cond_4
    move v2, v3

    .line 263
    goto :goto_0
.end method

.method private static parseResFile(Ljava/lang/String;)Lc8/Mxf;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 136
    const-string/jumbo v2, "res://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :goto_0
    return-object v1

    .line 141
    :cond_0
    const/4 v2, 0x6

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    .local v0, "resId":I
    new-instance v1, Lc8/Mxf;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Lc8/Mxf;-><init>(I)V

    .line 147
    .local v1, "scheme":Lc8/Mxf;
    iput v0, v1, Lc8/Mxf;->resId:I

    .line 148
    iput-object p0, v1, Lc8/Mxf;->baseName:Ljava/lang/String;

    goto :goto_0

    .line 143
    .end local v0    # "resId":I
    .end local v1    # "scheme":Lc8/Mxf;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static parseTfsRule(Ljava/lang/String;Lc8/Mxf;)Z
    .locals 10
    .param p0, "lastName"    # Ljava/lang/String;
    .param p1, "scheme"    # Lc8/Mxf;

    .prologue
    const/16 v9, 0x2710

    const/16 v8, 0x78

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    const/16 v6, 0x5f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 213
    .local v2, "start":I
    if-gez v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v4

    .line 216
    :cond_1
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 217
    .local v1, "position":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 218
    .local v3, "total":I
    :goto_1
    if-le v1, v2, :cond_0

    .line 219
    invoke-static {p0, v1, v4, v2}, Lc8/Mxf;->traverseValue(Ljava/lang/String;IZI)I

    move-result v6

    iput v6, p1, Lc8/Mxf;->width:I

    .line 220
    invoke-static {p0, v1, v5, v3}, Lc8/Mxf;->traverseValue(Ljava/lang/String;IZI)I

    move-result v6

    iput v6, p1, Lc8/Mxf;->height:I

    .line 222
    iget v6, p1, Lc8/Mxf;->width:I

    if-lez v6, :cond_4

    iget v6, p1, Lc8/Mxf;->width:I

    iget v7, p1, Lc8/Mxf;->height:I

    if-ne v6, v7, :cond_4

    .line 223
    iget v6, p1, Lc8/Mxf;->height:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 225
    .local v0, "digit":I
    add-int v6, v1, v0

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    add-int v6, v1, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_2

    add-int v6, v1, v0

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7a

    if-eq v6, v7, :cond_3

    .line 226
    :cond_2
    iput-boolean v5, p1, Lc8/Mxf;->isCdnSize:Z

    .line 228
    sub-int v6, v1, v0

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_3

    .line 229
    sub-int v6, v1, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lc8/Mxf;->baseName:Ljava/lang/String;

    :cond_3
    move v4, v5

    .line 232
    goto :goto_0

    .line 236
    .end local v0    # "digit":I
    :cond_4
    iget v6, p1, Lc8/Mxf;->width:I

    if-lez v6, :cond_5

    iget v6, p1, Lc8/Mxf;->height:I

    if-eq v6, v9, :cond_6

    :cond_5
    iget v6, p1, Lc8/Mxf;->height:I

    if-lez v6, :cond_7

    iget v6, p1, Lc8/Mxf;->width:I

    if-ne v6, v9, :cond_7

    :cond_6
    move v4, v5

    .line 237
    goto :goto_0

    .line 240
    :cond_7
    iput v4, p1, Lc8/Mxf;->height:I

    iput v4, p1, Lc8/Mxf;->width:I

    .line 241
    add-int/lit8 v2, v1, 0x1

    .line 242
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1
.end method

.method private static traverseOssSize(Ljava/lang/String;IC)I
    .locals 4
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "separator"    # C

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 268
    .local v0, "position":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 270
    invoke-static {p0, v0}, Lc8/Mxf;->isMatchOssRule(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, v0, v2, p1}, Lc8/Mxf;->traverseValue(Ljava/lang/String;IZI)I

    move-result v1

    .local v1, "value":I
    if-eqz v1, :cond_0

    .line 276
    .end local v1    # "value":I
    :goto_1
    return v1

    .line 273
    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 274
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 276
    goto :goto_1
.end method

.method private static traverseValue(Ljava/lang/String;IZI)I
    .locals 11
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "markPos"    # I
    .param p2, "forward"    # Z
    .param p3, "endPos"    # I

    .prologue
    const/16 v10, 0x9

    .line 289
    if-gez p1, :cond_1

    .line 290
    const/4 v4, 0x0

    .line 320
    :cond_0
    :goto_0
    return v4

    .line 292
    :cond_1
    const/4 v4, 0x0

    .line 293
    .local v4, "value":I
    const/4 v0, 0x0

    .line 296
    .local v0, "digitCount":I
    if-eqz p2, :cond_2

    .line 297
    add-int/lit8 v2, p1, 0x1

    .line 298
    .local v2, "offset":I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 300
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 301
    .local v3, "scanNum":I
    if-ltz v3, :cond_0

    if-gt v3, v10, :cond_0

    .line 304
    mul-int/lit8 v5, v4, 0xa

    add-int v4, v5, v3

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    .end local v2    # "offset":I
    .end local v3    # "scanNum":I
    :cond_2
    add-int/lit8 v2, p1, -0x1

    .restart local v2    # "offset":I
    move v1, v0

    .line 310
    .end local v0    # "digitCount":I
    .local v1, "digitCount":I
    :goto_2
    if-le v2, p3, :cond_3

    .line 312
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 313
    .restart local v3    # "scanNum":I
    if-ltz v3, :cond_3

    if-gt v3, v10, :cond_3

    .line 316
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "digitCount":I
    .restart local v0    # "digitCount":I
    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 317
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    .end local v0    # "digitCount":I
    .restart local v1    # "digitCount":I
    goto :goto_2

    .end local v3    # "scanNum":I
    :cond_3
    move v0, v1

    .end local v1    # "digitCount":I
    .restart local v0    # "digitCount":I
    goto :goto_0
.end method

.method public static wrapAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "asset://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrapFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrapRes(I)Ljava/lang/String;
    .locals 2
    .param p0, "resId"    # I

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isLocalUri()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lc8/Mxf;->type:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkUri()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lc8/Mxf;->type:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Mxf;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", baseName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Mxf;->baseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Mxf;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Mxf;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Mxf;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cdnSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/Mxf;->isCdnSize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Mxf;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Mxf;->resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", base64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Mxf;->base64:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
