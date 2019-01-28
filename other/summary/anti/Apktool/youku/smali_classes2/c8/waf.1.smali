.class public Lc8/waf;
.super Ljava/lang/Object;
.source "FileParser.java"

# interfaces
.implements Lc8/yaf;


# static fields
.field private static final TAG:Ljava/lang/String; = "Home.FileParser"


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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0}, Lc8/waf;->init()V

    .line 28
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
    .line 32
    :try_start_0
    const-string/jumbo v2, "android.content.res.XmlBlock"

    invoke-static {v2}, Lc8/waf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lc8/waf;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    .line 34
    iget-object v2, p0, Lc8/waf;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Home.FileParser"

    const-string/jumbo v3, "Fail to get XmlBlock"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public openXmlResourceParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 8
    .param p1, "template"    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-object v5, p0, Lc8/waf;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v4

    .line 63
    :goto_0
    return-object v2

    .line 46
    :cond_1
    iget-object v5, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-static {v5, v6}, Lc8/Paf;->readLocalTemplate(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    .local v0, "bts":[B
    if-eqz v0, :cond_2

    array-length v5, v0

    if-nez v5, :cond_3

    :cond_2
    move-object v2, v4

    .line 48
    goto :goto_0

    .line 51
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File parser is applied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    :try_start_0
    iget-object v5, p0, Lc8/waf;->xmlBlockConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, "xmlBlock":Ljava/lang/Object;
    const-string/jumbo v5, "newParser"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lc8/zaf;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "parser":Ljava/lang/Object;
    instance-of v5, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v5, :cond_4

    .line 57
    check-cast v2, Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v2    # "parser":Ljava/lang/Object;
    .end local v3    # "xmlBlock":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Home.FileParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New parser exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v2, v4

    .line 63
    goto :goto_0
.end method
