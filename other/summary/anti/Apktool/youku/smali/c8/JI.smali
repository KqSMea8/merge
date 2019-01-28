.class public Lc8/JI;
.super Ljava/lang/Object;
.source "WVFileParser.java"


# instance fields
.field private xmlBlockConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lc8/JI;->init()V

    .line 24
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 28
    :try_start_0
    const-string/jumbo v2, "android.content.res.XmlBlock"

    invoke-static {v2}, Lc8/JI;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lc8/JI;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public openXmlResourceParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 36
    iget-object v6, p0, Lc8/JI;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    if-nez v6, :cond_0

    move-object v3, v5

    .line 59
    :goto_0
    return-object v3

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "bts":[B
    :try_start_0
    const-class v6, Lc8/NI;

    invoke-static {v6, p1}, Lcom/ali/mobisecenhance/ReflectMap;->Class_getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 43
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Lc8/KI;->InputStreamTOByte(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v0, :cond_1

    array-length v6, v0

    if-nez v6, :cond_2

    :cond_1
    move-object v3, v5

    .line 48
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Read Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lc8/JI;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 52
    .local v4, "xmlBlock":Ljava/lang/Object;
    const-string/jumbo v6, "newParser"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lc8/MI;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    .local v3, "parser":Ljava/lang/Object;
    instance-of v6, v3, Landroid/content/res/XmlResourceParser;

    if-eqz v6, :cond_3

    .line 54
    check-cast v3, Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    .end local v3    # "parser":Ljava/lang/Object;
    .end local v4    # "xmlBlock":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 57
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Read Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v3, v5

    .line 59
    goto :goto_0
.end method
