.class public Lc8/wId;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vId;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private final queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/wId;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(Lc8/vId;)V
    .locals 4
    .param p1, "builder"    # Lc8/vId;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Lc8/vId;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lc8/wId;->scheme:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lc8/vId;->encodedUsername:Ljava/lang/String;

    invoke-static {v0, v3}, Lc8/wId;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/wId;->username:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lc8/vId;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v3}, Lc8/wId;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/wId;->password:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lc8/vId;->host:Ljava/lang/String;

    iput-object v0, p0, Lc8/wId;->host:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lc8/vId;->effectivePort()I

    move-result v0

    iput v0, p0, Lc8/wId;->port:I

    .line 82
    iget-object v0, p1, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lc8/wId;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/wId;->pathSegments:Ljava/util/List;

    .line 83
    iget-object v0, p1, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lc8/vId;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x1

    .line 84
    invoke-direct {p0, v0, v2}, Lc8/wId;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/wId;->queryNamesAndValues:Ljava/util/List;

    .line 86
    iget-object v0, p1, Lc8/vId;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lc8/vId;->encodedFragment:Ljava/lang/String;

    .line 87
    invoke-static {v0, v3}, Lc8/wId;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lc8/wId;->fragment:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lc8/vId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/wId;->url:Ljava/lang/String;

    .line 90
    return-void

    :cond_1
    move-object v0, v1

    .line 84
    goto :goto_0
.end method

.method synthetic constructor <init>(Lc8/vId;Lc8/uId;)V
    .locals 0
    .param p1, "x0"    # Lc8/vId;
    .param p2, "x1"    # Lc8/uId;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lc8/wId;-><init>(Lc8/vId;)V

    return-void
.end method

.method static synthetic access$100(Lc8/wId;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/wId;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/wId;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/wId;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/wId;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/wId;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/wId;)I
    .locals 1
    .param p0, "x0"    # Lc8/wId;

    .prologue
    .line 27
    iget v0, p0, Lc8/wId;->port:I

    return v0
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "encodeSet"    # Ljava/lang/String;
    .param p4, "alreadyEncoded"    # Z
    .param p5, "strict"    # Z
    .param p6, "plusIsSpace"    # Z
    .param p7, "asciiOnly"    # Z

    .prologue
    .line 1302
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 1303
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 1304
    .local v9, "codePoint":I
    const/16 v1, 0x20

    if-lt v9, v1, :cond_2

    const/16 v1, 0x7f

    if-eq v9, v1, :cond_2

    const/16 v1, 0x80

    if-lt v9, v1, :cond_0

    if-nez p7, :cond_2

    .line 1307
    :cond_0
    invoke-virtual {p3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/16 v1, 0x25

    if-ne v9, v1, :cond_1

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 1308
    invoke-static {p0, v2, p2}, Lc8/wId;->percentEncoded(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0x2b

    if-ne v9, v1, :cond_3

    if-eqz p6, :cond_3

    .line 1311
    :cond_2
    new-instance v0, Lc8/yJd;

    invoke-direct {v0}, Lc8/yJd;-><init>()V

    .line 1312
    .local v0, "out":Lc8/yJd;
    invoke-virtual {v0, p0, p1, v2}, Lc8/yJd;->writeUtf8(Ljava/lang/String;II)Lc8/yJd;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 1313
    invoke-static/range {v0 .. v8}, Lc8/wId;->canonicalize(Lc8/yJd;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 1315
    invoke-virtual {v0}, Lc8/yJd;->readUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1320
    .end local v0    # "out":Lc8/yJd;
    .end local v9    # "codePoint":I
    :goto_1
    return-object v1

    .line 1302
    .restart local v9    # "codePoint":I
    :cond_3
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_0

    .line 1320
    .end local v9    # "codePoint":I
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encodeSet"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z
    .param p3, "strict"    # Z
    .param p4, "plusIsSpace"    # Z
    .param p5, "asciiOnly"    # Z

    .prologue
    .line 1360
    const/4 v1, 0x0

    .line 1361
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1360
    invoke-static/range {v0 .. v7}, Lc8/wId;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static canonicalize(Lc8/yJd;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .locals 7
    .param p0, "out"    # Lc8/yJd;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "encodeSet"    # Ljava/lang/String;
    .param p5, "alreadyEncoded"    # Z
    .param p6, "strict"    # Z
    .param p7, "plusIsSpace"    # Z
    .param p8, "asciiOnly"    # Z

    .prologue
    const/16 v6, 0x25

    .line 1325
    const/4 v3, 0x0

    .line 1327
    .local v3, "utf8Buffer":Lc8/yJd;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_8

    .line 1328
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1329
    .local v1, "codePoint":I
    if-eqz p5, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1

    const/16 v4, 0xc

    if-eq v1, v4, :cond_1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_1

    .line 1332
    :cond_0
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_3

    if-eqz p7, :cond_3

    .line 1334
    if-eqz p5, :cond_2

    const-string/jumbo v4, "+"

    :goto_1
    invoke-virtual {p0, v4}, Lc8/yJd;->writeUtf8(Ljava/lang/String;)Lc8/yJd;

    .line 1327
    :cond_1
    :goto_2
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 1334
    :cond_2
    const-string/jumbo v4, "%2B"

    goto :goto_1

    .line 1335
    :cond_3
    const/16 v4, 0x20

    if-lt v1, v4, :cond_5

    const/16 v4, 0x7f

    if-eq v1, v4, :cond_5

    const/16 v4, 0x80

    if-lt v1, v4, :cond_4

    if-nez p8, :cond_5

    .line 1338
    :cond_4
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    if-ne v1, v6, :cond_7

    if-eqz p5, :cond_5

    if-eqz p6, :cond_7

    .line 1339
    invoke-static {p1, v2, p3}, Lc8/wId;->percentEncoded(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1341
    :cond_5
    if-nez v3, :cond_6

    .line 1342
    new-instance v3, Lc8/yJd;

    .end local v3    # "utf8Buffer":Lc8/yJd;
    invoke-direct {v3}, Lc8/yJd;-><init>()V

    .line 1344
    .restart local v3    # "utf8Buffer":Lc8/yJd;
    :cond_6
    invoke-virtual {v3, v1}, Lc8/yJd;->writeUtf8CodePoint(I)Lc8/yJd;

    .line 1345
    :goto_3
    invoke-virtual {v3}, Lc8/yJd;->exhausted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1346
    invoke-virtual {v3}, Lc8/yJd;->readByte()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 1347
    .local v0, "b":I
    invoke-virtual {p0, v6}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 1348
    sget-object v4, Lc8/wId;->HEX_DIGITS:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 1349
    sget-object v4, Lc8/wId;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    goto :goto_3

    .line 1353
    .end local v0    # "b":I
    :cond_7
    invoke-virtual {p0, v1}, Lc8/yJd;->writeUtf8CodePoint(I)Lc8/yJd;

    goto :goto_2

    .line 1356
    .end local v1    # "codePoint":I
    :cond_8
    return-void
.end method

.method static decodeHexDigit(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1277
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 1280
    :goto_0
    return v0

    .line 1278
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1279
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1280
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/16 v0, 0x50

    .line 197
    :goto_0
    return v0

    .line 194
    :cond_0
    const-string/jumbo v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const/16 v0, 0x1bb

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "namesAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 253
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 255
    .local v3, "value":Ljava/lang/String;
    if-lez v0, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    if-eqz v3, :cond_1

    .line 258
    const/16 v4, 0x3d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 262
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lc8/wId;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 391
    new-instance v0, Lc8/vId;

    invoke-direct {v0}, Lc8/vId;-><init>()V

    .line 392
    .local v0, "builder":Lc8/vId;
    invoke-virtual {v0, v2, p0}, Lc8/vId;->parse(Lc8/wId;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 393
    .local v1, "result":Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;
    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lc8/vId;->build()Lc8/wId;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "plusIsSpace"    # Z

    .prologue
    .line 1234
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1235
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1236
    .local v0, "c":C
    const/16 v3, 0x25

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    if-eqz p3, :cond_1

    .line 1238
    :cond_0
    new-instance v2, Lc8/yJd;

    invoke-direct {v2}, Lc8/yJd;-><init>()V

    .line 1239
    .local v2, "out":Lc8/yJd;
    invoke-virtual {v2, p0, p1, v1}, Lc8/yJd;->writeUtf8(Ljava/lang/String;II)Lc8/yJd;

    .line 1240
    invoke-static {v2, p0, v1, p2, p3}, Lc8/wId;->percentDecode(Lc8/yJd;Ljava/lang/String;IIZ)V

    .line 1241
    invoke-virtual {v2}, Lc8/yJd;->readUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1246
    .end local v0    # "c":C
    .end local v2    # "out":Lc8/yJd;
    :goto_1
    return-object v3

    .line 1234
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1246
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "plusIsSpace"    # Z

    .prologue
    .line 1222
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lc8/wId;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .param p2, "plusIsSpace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1227
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1228
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Lc8/wId;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1230
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method static percentDecode(Lc8/yJd;Ljava/lang/String;IIZ)V
    .locals 6
    .param p0, "out"    # Lc8/yJd;
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "plusIsSpace"    # Z

    .prologue
    const/4 v5, -0x1

    .line 1251
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 1252
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1253
    .local v0, "codePoint":I
    const/16 v4, 0x25

    if-ne v0, v4, :cond_0

    add-int/lit8 v4, v3, 0x2

    if-ge v4, p3, :cond_0

    .line 1254
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lc8/wId;->decodeHexDigit(C)I

    move-result v1

    .line 1255
    .local v1, "d1":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lc8/wId;->decodeHexDigit(C)I

    move-result v2

    .line 1256
    .local v2, "d2":I
    if-eq v1, v5, :cond_1

    if-eq v2, v5, :cond_1

    .line 1257
    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 1258
    add-int/lit8 v3, v3, 0x2

    .line 1251
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1261
    :cond_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1

    if-eqz p4, :cond_1

    .line 1262
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    goto :goto_1

    .line 1265
    :cond_1
    invoke-virtual {p0, v0}, Lc8/yJd;->writeUtf8CodePoint(I)Lc8/yJd;

    goto :goto_1

    .line 1267
    .end local v0    # "codePoint":I
    :cond_2
    return-void
.end method

.method static percentEncoded(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v2, -0x1

    .line 1270
    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    .line 1271
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1272
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lc8/wId;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 1273
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lc8/wId;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1270
    goto :goto_0
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "encodedQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 273
    const/16 v4, 0x26

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 274
    .local v0, "ampersandOffset":I
    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 276
    :cond_0
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 277
    .local v1, "equalsOffset":I
    if-eq v1, v5, :cond_1

    if-le v1, v0, :cond_2

    .line 278
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 285
    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    .end local v0    # "ampersandOffset":I
    .end local v1    # "equalsOffset":I
    :cond_3
    return-object v3
.end method


# virtual methods
.method public encodedFragment()Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lc8/wId;->fragment:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 345
    :goto_0
    return-object v1

    .line 344
    :cond_0
    iget-object v1, p0, Lc8/wId;->url:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 345
    .local v0, "fragmentStart":I
    iget-object v1, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public encodedPassword()Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    iget-object v2, p0, Lc8/wId;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    .line 155
    :goto_0
    return-object v2

    .line 153
    :cond_0
    iget-object v2, p0, Lc8/wId;->url:Ljava/lang/String;

    const/16 v3, 0x3a

    iget-object v4, p0, Lc8/wId;->scheme:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 154
    .local v1, "passwordStart":I
    iget-object v2, p0, Lc8/wId;->url:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 155
    .local v0, "passwordEnd":I
    iget-object v2, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public encodedPathSegments()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x2f

    .line 223
    iget-object v5, p0, Lc8/wId;->url:Ljava/lang/String;

    iget-object v6, p0, Lc8/wId;->scheme:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 224
    .local v2, "pathStart":I
    iget-object v5, p0, Lc8/wId;->url:Ljava/lang/String;

    iget-object v6, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string/jumbo v7, "?#"

    invoke-static {v5, v2, v6, v7}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 225
    .local v1, "pathEnd":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    iget-object v5, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-static {v5, v0, v1, v8}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    .line 229
    .local v4, "segmentEnd":I
    iget-object v5, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    move v0, v4

    .line 231
    goto :goto_0

    .line 232
    .end local v4    # "segmentEnd":I
    :cond_0
    return-object v3
.end method

.method public encodedQuery()Ljava/lang/String;
    .locals 6

    .prologue
    .line 245
    iget-object v2, p0, Lc8/wId;->queryNamesAndValues:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 248
    :goto_0
    return-object v2

    .line 246
    :cond_0
    iget-object v2, p0, Lc8/wId;->url:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 247
    .local v1, "queryStart":I
    iget-object v2, p0, Lc8/wId;->url:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x23

    invoke-static {v2, v3, v4, v5}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v0

    .line 248
    .local v0, "queryEnd":I
    iget-object v2, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public encodedUsername()Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    iget-object v2, p0, Lc8/wId;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    .line 143
    :goto_0
    return-object v2

    .line 141
    :cond_0
    iget-object v2, p0, Lc8/wId;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x3

    .line 142
    .local v1, "usernameStart":I
    iget-object v2, p0, Lc8/wId;->url:Ljava/lang/String;

    iget-object v3, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, ":@"

    invoke-static {v2, v1, v3, v4}, Lc8/LId;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "usernameEnd":I
    iget-object v2, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 432
    instance-of v0, p1, Lc8/wId;

    if-eqz v0, :cond_0

    check-cast p1, Lc8/wId;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lc8/wId;->url:Ljava/lang/String;

    iget-object v1, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lc8/wId;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHttps()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lc8/wId;->scheme:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilder()Lc8/vId;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Lc8/vId;

    invoke-direct {v0}, Lc8/vId;-><init>()V

    .line 363
    .local v0, "result":Lc8/vId;
    iget-object v1, p0, Lc8/wId;->scheme:Ljava/lang/String;

    iput-object v1, v0, Lc8/vId;->scheme:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lc8/wId;->encodedUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/vId;->encodedUsername:Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lc8/wId;->encodedPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/vId;->encodedPassword:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lc8/wId;->host:Ljava/lang/String;

    iput-object v1, v0, Lc8/vId;->host:Ljava/lang/String;

    .line 368
    iget v1, p0, Lc8/wId;->port:I

    iget-object v2, p0, Lc8/wId;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lc8/wId;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lc8/wId;->port:I

    :goto_0
    iput v1, v0, Lc8/vId;->port:I

    .line 369
    iget-object v1, v0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 370
    iget-object v1, v0, Lc8/vId;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lc8/wId;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-virtual {p0}, Lc8/wId;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/vId;->encodedQuery(Ljava/lang/String;)Lc8/vId;

    .line 372
    invoke-virtual {p0}, Lc8/wId;->encodedFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/vId;->encodedFragment:Ljava/lang/String;

    .line 373
    return-object v0

    .line 368
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lc8/wId;->url:Ljava/lang/String;

    return-object v0
.end method
