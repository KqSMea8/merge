.class public Lc8/uPg;
.super Ljava/lang/Object;
.source "FontFamilyInfo.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFamilyName:Ljava/lang/String;

.field mTypefaceInfos:[Lc8/EPg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJsonString(Ljava/lang/String;)Lc8/uPg;
    .locals 9
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 102
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const/4 v0, 0x0

    .line 104
    .local v0, "familyInfo":Lc8/uPg;
    if-eqz v2, :cond_0

    .line 105
    new-instance v0, Lc8/uPg;

    .end local v0    # "familyInfo":Lc8/uPg;
    invoke-direct {v0}, Lc8/uPg;-><init>()V

    .line 106
    .restart local v0    # "familyInfo":Lc8/uPg;
    const-string/jumbo v7, "name"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lc8/uPg;->setName(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v7, "description"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lc8/uPg;->setDescription(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v7, "typeface"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 110
    .local v4, "typefaceArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 111
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 113
    .local v3, "size":I
    new-array v7, v3, [Lc8/EPg;

    iput-object v7, v0, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 115
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 117
    .local v6, "typefaceObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v5, Lc8/EPg;

    invoke-direct {v5}, Lc8/EPg;-><init>()V

    .line 118
    .local v5, "typefaceInfo":Lc8/EPg;
    const-string/jumbo v7, "download-url"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lc8/EPg;->setTypefaceDownloadUrl(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v7, "file-path"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lc8/EPg;->setTypefaceFilePath(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v7, "font-weight"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lc8/EPg;->setWeight(I)V

    .line 121
    const-string/jumbo v7, "italic"

    const-string/jumbo v8, "font-style"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lc8/EPg;->setIsItalic(Z)V

    .line 122
    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lc8/EPg;->setName(Ljava/lang/String;)V

    .line 124
    iget-object v7, v0, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    aput-object v5, v7, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "typefaceArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "typefaceInfo":Lc8/EPg;
    .end local v6    # "typefaceObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public findBestMatch(I)Lc8/EPg;
    .locals 13
    .param p1, "fontStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 32
    and-int/lit8 v8, p1, 0x1

    if-nez v8, :cond_2

    const/16 v5, 0x190

    .line 33
    .local v5, "targetWeight":I
    :goto_0
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_3

    move v3, v6

    .line 35
    .local v3, "isTargetItalic":Z
    :goto_1
    const/4 v0, 0x0

    .line 36
    .local v0, "best":Lc8/EPg;
    const v1, 0x7fffffff

    .line 38
    .local v1, "bestScore":I
    iget-object v10, p0, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    array-length v11, v10

    move v9, v7

    :goto_2
    if-ge v9, v11, :cond_5

    aget-object v2, v10, v9

    .line 39
    .local v2, "font":Lc8/EPg;
    invoke-virtual {v2}, Lc8/EPg;->getWeight()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    shl-int/lit8 v12, v8, 0x1

    .line 40
    invoke-virtual {v2}, Lc8/EPg;->isItalic()Z

    move-result v8

    if-ne v8, v3, :cond_4

    move v8, v7

    :goto_3
    add-int v4, v12, v8

    .line 42
    .local v4, "score":I
    if-eqz v0, :cond_0

    if-le v1, v4, :cond_1

    .line 43
    :cond_0
    move-object v0, v2

    .line 44
    move v1, v4

    .line 38
    :cond_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_2

    .line 32
    .end local v0    # "best":Lc8/EPg;
    .end local v1    # "bestScore":I
    .end local v2    # "font":Lc8/EPg;
    .end local v3    # "isTargetItalic":Z
    .end local v4    # "score":I
    .end local v5    # "targetWeight":I
    :cond_2
    const/16 v5, 0x2bc

    goto :goto_0

    .restart local v5    # "targetWeight":I
    :cond_3
    move v3, v7

    .line 33
    goto :goto_1

    .restart local v0    # "best":Lc8/EPg;
    .restart local v1    # "bestScore":I
    .restart local v2    # "font":Lc8/EPg;
    .restart local v3    # "isTargetItalic":Z
    :cond_4
    move v8, v6

    .line 40
    goto :goto_3

    .line 47
    .end local v2    # "font":Lc8/EPg;
    :cond_5
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/uPg;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/uPg;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lc8/uPg;->mDescription:Ljava/lang/String;

    .line 64
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lc8/uPg;->mFamilyName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 75
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 77
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "name"

    invoke-virtual {p0}, Lc8/uPg;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v4, "description"

    invoke-virtual {p0}, Lc8/uPg;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v4, p0, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 81
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 83
    .local v1, "typefaceArray":Lcom/alibaba/fastjson/JSONArray;
    iget-object v6, p0, Lc8/uPg;->mTypefaceInfos:[Lc8/EPg;

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v6, v5

    .line 84
    .local v2, "typefaceInfo":Lc8/EPg;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 85
    .local v3, "typefaceObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "download-url"

    invoke-virtual {v2}, Lc8/EPg;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v4, "file-path"

    invoke-virtual {v2}, Lc8/EPg;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v8, "font-style"

    invoke-virtual {v2}, Lc8/EPg;->isItalic()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "italic"

    :goto_1
    invoke-virtual {v3, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v4, "name"

    invoke-virtual {v2}, Lc8/EPg;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v4, "font-weight"

    invoke-virtual {v2}, Lc8/EPg;->getWeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 87
    :cond_0
    const-string/jumbo v4, "normal"

    goto :goto_1

    .line 94
    .end local v2    # "typefaceInfo":Lc8/EPg;
    .end local v3    # "typefaceObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const-string/jumbo v4, "typeface"

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v1    # "typefaceArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
