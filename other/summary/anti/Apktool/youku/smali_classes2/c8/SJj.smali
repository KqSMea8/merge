.class public abstract Lc8/SJj;
.super Ljava/lang/Object;
.source "BaseConverter.java"

# interfaces
.implements Lc8/TJj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/TJj",
        "<TI;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lc8/SJj;, "Lcom/youku/network/converter/BaseConverter<TI;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEncodedUaStub(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    .local p0, "this":Lc8/SJj;, "Lcom/youku/network/converter/BaseConverter<TI;TO;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 32
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 34
    .local v0, "c":C
    const/16 v3, 0x1f

    if-le v0, v3, :cond_2

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_3

    .line 35
    :cond_2
    invoke-static {p1}, Lc8/tSh;->getTextEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getEncodedUA(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 15
    .local p0, "this":Lc8/SJj;, "Lcom/youku/network/converter/BaseConverter<TI;TO;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    .end local p1    # "ua":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 19
    .restart local p1    # "ua":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "uaList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    .line 21
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lc8/SJj;->getEncodedUaStub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_1
    const-string/jumbo v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
