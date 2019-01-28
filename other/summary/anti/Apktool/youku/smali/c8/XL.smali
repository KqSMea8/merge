.class public Lc8/XL;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# instance fields
.field private host:Ljava/lang/String;

.field private volatile isSchemeLocked:Z

.field private path:Ljava/lang/String;

.field private port:I

.field private scheme:Ljava/lang/String;

.field private schemeAndHost:Ljava/lang/String;

.field private simpleUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/XL;->isSchemeLocked:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Lc8/XL;)V
    .locals 1
    .param p1, "rhs"    # Lc8/XL;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/XL;->isSchemeLocked:Z

    .line 25
    iget-object v0, p1, Lc8/XL;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lc8/XL;->scheme:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lc8/XL;->host:Ljava/lang/String;

    iput-object v0, p0, Lc8/XL;->host:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lc8/XL;->path:Ljava/lang/String;

    iput-object v0, p0, Lc8/XL;->path:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lc8/XL;->url:Ljava/lang/String;

    iput-object v0, p0, Lc8/XL;->url:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lc8/XL;->simpleUrl:Ljava/lang/String;

    iput-object v0, p0, Lc8/XL;->simpleUrl:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lc8/XL;->schemeAndHost:Ljava/lang/String;

    iput-object v0, p0, Lc8/XL;->schemeAndHost:Ljava/lang/String;

    .line 31
    iget-boolean v0, p1, Lc8/XL;->isSchemeLocked:Z

    iput-boolean v0, p0, Lc8/XL;->isSchemeLocked:Z

    .line 32
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lc8/XL;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v8, 0x0

    .line 125
    :goto_0
    return-object v8

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 40
    new-instance v8, Lc8/XL;

    invoke-direct {v8}, Lc8/XL;-><init>()V

    .line 41
    .local v8, "httpUrl":Lc8/XL;
    iput-object p0, v8, Lc8/XL;->url:Ljava/lang/String;

    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "pos":I
    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    const/4 v0, 0x0

    iput-object v0, v8, Lc8/XL;->scheme:Ljava/lang/String;

    .line 58
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 59
    .local v9, "length":I
    add-int/lit8 v2, v2, 0x2

    .line 60
    move v7, v2

    .line 63
    .local v7, "hostStart":I
    :goto_2
    if-ge v2, v9, :cond_2

    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 65
    .local v6, "c":C
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_1

    const/16 v0, 0x3a

    if-eq v6, v0, :cond_1

    const/16 v0, 0x3f

    if-eq v6, v0, :cond_1

    const/16 v0, 0x23

    if-ne v6, v0, :cond_6

    .line 66
    :cond_1
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lc8/XL;->host:Ljava/lang/String;

    .line 70
    .end local v6    # "c":C
    :cond_2
    if-ne v2, v9, :cond_7

    .line 71
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lc8/XL;->host:Ljava/lang/String;

    goto :goto_0

    .line 46
    .end local v7    # "hostStart":I
    .end local v9    # "length":I
    :cond_3
    const/4 v1, 0x1

    const-string/jumbo v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    const-string/jumbo v0, "https"

    iput-object v0, v8, Lc8/XL;->scheme:Ljava/lang/String;

    .line 48
    const/16 v0, 0x1bb

    iput v0, v8, Lc8/XL;->port:I

    .line 49
    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    .line 50
    :cond_4
    const/4 v1, 0x1

    const-string/jumbo v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    const-string/jumbo v0, "http"

    iput-object v0, v8, Lc8/XL;->scheme:Ljava/lang/String;

    .line 52
    const/16 v0, 0x50

    iput v0, v8, Lc8/XL;->port:I

    .line 53
    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    .line 55
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 63
    .restart local v6    # "c":C
    .restart local v7    # "hostStart":I
    .restart local v9    # "length":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 75
    .end local v6    # "c":C
    :cond_7
    const/4 v13, 0x0

    .line 76
    .local v13, "portStart":I
    const/4 v12, 0x0

    .line 77
    .local v12, "portEnd":I
    :goto_3
    if-ge v2, v9, :cond_b

    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 79
    .restart local v6    # "c":C
    const/16 v0, 0x3a

    if-ne v6, v0, :cond_9

    if-nez v13, :cond_9

    .line 80
    add-int/lit8 v13, v2, 0x1

    .line 77
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 83
    :cond_9
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_a

    const/16 v0, 0x23

    if-eq v6, v0, :cond_a

    const/16 v0, 0x3f

    if-ne v6, v0, :cond_8

    .line 84
    :cond_a
    move v12, v2

    .line 89
    .end local v6    # "c":C
    :cond_b
    if-eqz v13, :cond_e

    .line 90
    if-eqz v12, :cond_d

    .end local v12    # "portEnd":I
    :goto_4
    invoke-virtual {p0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 92
    .local v14, "strPort":Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lc8/XL;->port:I

    .line 93
    iget v0, v8, Lc8/XL;->port:I

    if-lez v0, :cond_c

    iget v0, v8, Lc8/XL;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0xffff

    if-le v0, v1, :cond_e

    .line 94
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v14    # "strPort":Ljava/lang/String;
    .restart local v12    # "portEnd":I
    :cond_d
    move v12, v9

    .line 90
    goto :goto_4

    .line 97
    .end local v12    # "portEnd":I
    .restart local v14    # "strPort":Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 101
    .end local v14    # "strPort":Ljava/lang/String;
    :cond_e
    const/4 v11, 0x0

    .line 102
    .local v11, "pathStart":I
    const/4 v10, 0x0

    .line 103
    .local v10, "pathEnd":I
    :goto_5
    if-ge v2, v9, :cond_12

    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 105
    .restart local v6    # "c":C
    const/16 v0, 0x2f

    if-ne v6, v0, :cond_10

    if-nez v11, :cond_10

    .line 106
    move v11, v2

    .line 103
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 109
    :cond_10
    const/16 v0, 0x3f

    if-eq v6, v0, :cond_11

    const/16 v0, 0x23

    if-ne v6, v0, :cond_f

    .line 110
    :cond_11
    if-eqz v11, :cond_12

    .line 111
    move v10, v2

    .line 117
    .end local v6    # "c":C
    :cond_12
    if-eqz v11, :cond_15

    .line 118
    if-eqz v10, :cond_13

    move v0, v10

    :goto_6
    invoke-virtual {p0, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lc8/XL;->path:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    if-eqz v10, :cond_14

    .end local v10    # "pathEnd":I
    :goto_7
    invoke-virtual {p0, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lc8/XL;->simpleUrl:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v10    # "pathEnd":I
    :cond_13
    move v0, v9

    .line 118
    goto :goto_6

    :cond_14
    move v10, v9

    .line 119
    goto :goto_7

    .line 121
    :cond_15
    const-string/jumbo v0, ""

    iput-object v0, v8, Lc8/XL;->path:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lc8/XL;->simpleUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public containsNonDefaultPort()Z
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "http"

    iget-object v1, p0, Lc8/XL;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/XL;->port:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "https"

    iget-object v1, p0, Lc8/XL;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lc8/XL;->port:I

    const/16 v1, 0x1bb

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public downgradeSchemeAndLock()V
    .locals 5

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/XL;->isSchemeLocked:Z

    .line 173
    const-string/jumbo v0, "http"

    iget-object v1, p0, Lc8/XL;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lc8/XL;->scheme:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lc8/XL;->scheme:Ljava/lang/String;

    const-string/jumbo v1, ":"

    iget-object v2, p0, Lc8/XL;->url:Ljava/lang/String;

    iget-object v3, p0, Lc8/XL;->url:Ljava/lang/String;

    const-string/jumbo v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/XL;->url:Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/XL;->schemeAndHost:Ljava/lang/String;

    .line 178
    :cond_0
    return-void
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lc8/XL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isSchemeLocked()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lc8/XL;->isSchemeLocked:Z

    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lc8/XL;->schemeAndHost:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lc8/XL;->scheme:Ljava/lang/String;

    const-string/jumbo v1, "://"

    iget-object v2, p0, Lc8/XL;->host:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/XL;->schemeAndHost:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v0, p0, Lc8/XL;->schemeAndHost:Ljava/lang/String;

    return-object v0
.end method

.method public lockScheme()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/XL;->isSchemeLocked:Z

    .line 186
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lc8/XL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public replaceIpAndPort(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 200
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 201
    iget-object v2, p0, Lc8/XL;->url:Ljava/lang/String;

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    .line 202
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/XL;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 203
    iget-object v2, p0, Lc8/XL;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc8/XL;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc8/XL;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/XL;->url:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/XL;->url:Ljava/lang/String;

    .line 217
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lc8/XL;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-boolean v0, p0, Lc8/XL;->isSchemeLocked:Z

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lc8/XL;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iput-object p1, p0, Lc8/XL;->scheme:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, ":"

    iget-object v1, p0, Lc8/XL;->url:Ljava/lang/String;

    iget-object v2, p0, Lc8/XL;->url:Ljava/lang/String;

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/XL;->url:Ljava/lang/String;

    .line 193
    const-string/jumbo v0, ":"

    iget-object v1, p0, Lc8/XL;->simpleUrl:Ljava/lang/String;

    iget-object v2, p0, Lc8/XL;->url:Ljava/lang/String;

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/XL;->simpleUrl:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/XL;->schemeAndHost:Ljava/lang/String;

    .line 197
    :cond_0
    return-void
.end method

.method public simpleUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/XL;->simpleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lc8/XL;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 161
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lc8/XL;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lc8/XL;->url:Ljava/lang/String;

    return-object v0
.end method
