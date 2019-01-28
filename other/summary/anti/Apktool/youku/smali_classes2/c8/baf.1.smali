.class public Lc8/baf;
.super Ljava/lang/Object;
.source "DinamicViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventInfo(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p0, "eventAttr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v4

    .line 39
    :cond_1
    const-string/jumbo v5, "("

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 40
    .local v2, "leftBracketPos":I
    const-string/jumbo v5, ")"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 41
    .local v3, "rightBracketPos":I
    if-gez v2, :cond_2

    if-gez v3, :cond_2

    .line 42
    const-string/jumbo v5, "Dinamic"

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "\u4e8b\u4ef6\u5c5e\u6027:%s\u8bed\u6cd5\u51fa\u9519,\u6ca1\u6709\u5305\u542b\"\uff08\uff09\""

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lc8/taf;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "ehId":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "eventExp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 49
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getViewDinamicProperty(Landroid/view/View;)Ljava/util/Map;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0}, Lc8/baf;->getViewProperty(Landroid/view/View;)Lc8/Naf;

    move-result-object v0

    .line 31
    .local v0, "property":Lc8/Naf;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lc8/Naf;->dinamicProperty:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getViewProperty(Landroid/view/View;)Lc8/Naf;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 21
    if-nez p0, :cond_0

    move-object v0, v1

    .line 26
    :goto_0
    return-object v0

    .line 25
    :cond_0
    sget v2, Lc8/WZe;->PROPERTY_KEY:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    check-cast v0, Lc8/Naf;

    goto :goto_0
.end method
