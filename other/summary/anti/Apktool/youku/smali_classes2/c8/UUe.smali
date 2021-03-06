.class public final Lc8/UUe;
.super Ljava/lang/Object;
.source "OkHeaders.java"


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PREFIX:Ljava/lang/String;

.field public static final RECEIVED_MILLIS:Ljava/lang/String;

.field public static final RESPONSE_SOURCE:Ljava/lang/String;

.field public static final SELECTED_PROTOCOL:Ljava/lang/String;

.field public static final SENT_MILLIS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lc8/TUe;

    invoke-direct {v0}, Lc8/TUe;-><init>()V

    sput-object v0, Lc8/UUe;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 40
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/xTe;->getPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UUe;->PREFIX:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/UUe;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UUe;->SENT_MILLIS:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/UUe;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UUe;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/UUe;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Selected-Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UUe;->SELECTED_PROTOCOL:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/UUe;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Response-Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UUe;->RESPONSE_SOURCE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static addCookies(Lc8/USe;Ljava/util/Map;)V
    .locals 4
    .param p0, "builder"    # Lc8/USe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/USe;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc8/UUe;->buildCookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lc8/USe;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    goto :goto_0

    .line 119
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static buildCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    :goto_0
    return-object v3

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 129
    if-lez v0, :cond_1

    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static contentLength(Lc8/GSe;)J
    .locals 2
    .param p0, "headers"    # Lc8/GSe;

    .prologue
    .line 73
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lc8/GSe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/UUe;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lc8/VSe;)J
    .locals 2
    .param p0, "request"    # Lc8/VSe;

    .prologue
    .line 65
    invoke-virtual {p0}, Lc8/VSe;->headers()Lc8/GSe;

    move-result-object v0

    invoke-static {v0}, Lc8/UUe;->contentLength(Lc8/GSe;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lc8/cTe;)J
    .locals 2
    .param p0, "response"    # Lc8/cTe;

    .prologue
    .line 69
    invoke-virtual {p0}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v0

    invoke-static {v0}, Lc8/UUe;->contentLength(Lc8/GSe;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasVaryAll(Lc8/GSe;)Z
    .locals 2
    .param p0, "responseHeaders"    # Lc8/GSe;

    .prologue
    .line 160
    invoke-static {p0}, Lc8/UUe;->varyFields(Lc8/GSe;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lc8/cTe;)Z
    .locals 1
    .param p0, "response"    # Lc8/cTe;

    .prologue
    .line 152
    invoke-virtual {p0}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v0

    invoke-static {v0}, Lc8/UUe;->hasVaryAll(Lc8/GSe;)Z

    move-result v0

    return v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Keep-Alive"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authenticate"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Proxy-Authorization"

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TE"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Trailers"

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Transfer-Encoding"

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Upgrade"

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseChallenges(Lc8/GSe;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "responseHeaders"    # Lc8/GSe;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/GSe;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/rSe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {p0}, Lc8/GSe;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v6, v11, :cond_1

    .line 245
    invoke-virtual {p0, v6}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0, v6}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 250
    .local v2, "pos":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 251
    move v12, v2

    .line 252
    .local v12, "tokenStart":I
    const-string/jumbo v1, " "

    invoke-static {v0, v2, v1}, Lc8/AUe;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 254
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, "scheme":Ljava/lang/String;
    invoke-static {v0, v2}, Lc8/AUe;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 261
    const/4 v1, 0x1

    const-string/jumbo v3, "realm=\""

    const/4 v4, 0x0

    const-string/jumbo v5, "realm=\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string/jumbo v1, "realm=\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    .line 266
    move v8, v2

    .line 267
    .local v8, "realmStart":I
    const-string/jumbo v1, "\""

    invoke-static {v0, v2, v1}, Lc8/AUe;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 268
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, "realm":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 270
    const-string/jumbo v1, ","

    invoke-static {v0, v2, v1}, Lc8/AUe;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    .line 272
    invoke-static {v0, v2}, Lc8/AUe;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 273
    new-instance v1, Lc8/rSe;

    invoke-direct {v1, v10, v7}, Lc8/rSe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "realmStart":I
    .end local v10    # "scheme":Ljava/lang/String;
    .end local v12    # "tokenStart":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 276
    :cond_1
    return-object v9
.end method

.method public static processAuthHeader(Lc8/YRe;Lc8/cTe;Ljava/net/Proxy;)Lc8/VSe;
    .locals 2
    .param p0, "authenticator"    # Lc8/YRe;
    .param p1, "response"    # Lc8/cTe;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p1}, Lc8/cTe;->code()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_0

    .line 287
    invoke-interface {p0, p2, p1}, Lc8/YRe;->authenticateProxy(Ljava/net/Proxy;Lc8/cTe;)Lc8/VSe;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p2, p1}, Lc8/YRe;->authenticate(Ljava/net/Proxy;Lc8/cTe;)Lc8/VSe;

    move-result-object v0

    goto :goto_0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 77
    if-nez p0, :cond_0

    .line 81
    :goto_0
    return-wide v0

    .line 79
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toMultimap(Lc8/GSe;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "headers"    # Lc8/GSe;
    .param p1, "valueForNullKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/GSe;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v4, Ljava/util/TreeMap;

    sget-object v7, Lc8/UUe;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v4, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 93
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lc8/GSe;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 94
    invoke-virtual {p0, v2}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "value":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 99
    .local v3, "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v3    # "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 106
    const/4 v7, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    return-object v7
.end method

.method public static varyFields(Lc8/GSe;)Ljava/util/Set;
    .locals 9
    .param p0, "responseHeaders"    # Lc8/GSe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/GSe;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 173
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lc8/GSe;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 174
    const-string/jumbo v5, "Vary"

    invoke-virtual {p0, v0}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {p0, v0}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    new-instance v1, Ljava/util/TreeSet;

    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 180
    .restart local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v4, v6, v5

    .line 181
    .local v4, "varyField":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 173
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "varyField":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    return-object v1
.end method

.method private static varyFields(Lc8/cTe;)Ljava/util/Set;
    .locals 1
    .param p0, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/cTe;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v0

    invoke-static {v0}, Lc8/UUe;->varyFields(Lc8/GSe;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lc8/GSe;Lc8/GSe;)Lc8/GSe;
    .locals 6
    .param p0, "requestHeaders"    # Lc8/GSe;
    .param p1, "responseHeaders"    # Lc8/GSe;

    .prologue
    .line 205
    invoke-static {p1}, Lc8/UUe;->varyFields(Lc8/GSe;)Ljava/util/Set;

    move-result-object v4

    .line 206
    .local v4, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lc8/FSe;

    invoke-direct {v5}, Lc8/FSe;-><init>()V

    invoke-virtual {v5}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v5

    .line 215
    :goto_0
    return-object v5

    .line 208
    :cond_0
    new-instance v2, Lc8/FSe;

    invoke-direct {v2}, Lc8/FSe;-><init>()V

    .line 209
    .local v2, "result":Lc8/FSe;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lc8/GSe;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 210
    invoke-virtual {p0, v1}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    invoke-virtual {p0, v1}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lc8/FSe;->add(Ljava/lang/String;Ljava/lang/String;)Lc8/FSe;

    .line 209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v5

    goto :goto_0
.end method

.method public static varyHeaders(Lc8/cTe;)Lc8/GSe;
    .locals 3
    .param p0, "response"    # Lc8/cTe;

    .prologue
    .line 195
    invoke-virtual {p0}, Lc8/cTe;->networkResponse()Lc8/cTe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/VSe;->headers()Lc8/GSe;

    move-result-object v0

    .line 196
    .local v0, "requestHeaders":Lc8/GSe;
    invoke-virtual {p0}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v1

    .line 197
    .local v1, "responseHeaders":Lc8/GSe;
    invoke-static {v0, v1}, Lc8/UUe;->varyHeaders(Lc8/GSe;Lc8/GSe;)Lc8/GSe;

    move-result-object v2

    return-object v2
.end method

.method public static varyMatches(Lc8/cTe;Lc8/GSe;Lc8/VSe;)Z
    .locals 4
    .param p0, "cachedResponse"    # Lc8/cTe;
    .param p1, "cachedRequest"    # Lc8/GSe;
    .param p2, "newRequest"    # Lc8/VSe;

    .prologue
    .line 141
    invoke-static {p0}, Lc8/UUe;->varyFields(Lc8/cTe;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lc8/GSe;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lc8/VSe;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ATe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 144
    .end local v0    # "field":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
