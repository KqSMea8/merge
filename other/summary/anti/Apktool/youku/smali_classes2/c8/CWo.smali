.class public Lc8/CWo;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zWo;,
        Lc8/BWo;,
        Lc8/AWo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static fromHtml(Ljava/lang/String;Lc8/AWo;Lc8/BWo;IILjava/lang/String;)Landroid/text/Spanned;
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Lc8/AWo;
    .param p2, "tagHandler"    # Lc8/BWo;
    .param p3, "lineHeight"    # I
    .param p4, "displayCount"    # I
    .param p5, "customEllipsis"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v4, Lc8/qXo;

    invoke-direct {v4}, Lc8/qXo;-><init>()V

    .line 92
    .local v4, "parser":Lc8/qXo;
    :try_start_0
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lc8/zWo;->access$000()Lc8/oXo;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lc8/qXo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    new-instance v0, Lc8/UWo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lc8/UWo;-><init>(Ljava/lang/String;Lc8/AWo;Lc8/BWo;Lorg/xml/sax/XMLReader;ILjava/lang/String;)V

    .line 101
    .local v0, "converter":Lc8/UWo;
    invoke-virtual {v0, p3}, Lc8/UWo;->convert(I)Landroid/text/Spanned;

    move-result-object v1

    return-object v1

    .line 93
    .end local v0    # "converter":Lc8/UWo;
    :catch_0
    move-exception v7

    .line 94
    .local v7, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 95
    .end local v7    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v7

    .line 96
    .local v7, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
