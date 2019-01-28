.class public Lc8/kaf;
.super Ljava/lang/Object;
.source "DinamicDataParserFactory.java"


# static fields
.field private static parsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/laf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    sput-object v0, Lc8/kaf;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "data"

    new-instance v2, Lc8/maf;

    invoke-direct {v2}, Lc8/maf;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lc8/kaf;->parsers:Ljava/util/Map;

    const-string/jumbo v1, "const"

    new-instance v2, Lc8/jaf;

    invoke-direct {v2}, Lc8/jaf;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lc8/kaf;->parsers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getParser(Ljava/lang/String;)Lc8/laf;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lc8/kaf;->parsers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/laf;

    return-object v0
.end method

.method public static registerParser(Ljava/lang/String;Lc8/laf;)Z
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "parser"    # Lc8/laf;

    .prologue
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 27
    :cond_1
    sget-object v0, Lc8/kaf;->parsers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static unregisterParser(Ljava/lang/String;)Z
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    const-string/jumbo v1, "data"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "const"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    sget-object v0, Lc8/kaf;->parsers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method
