.class public Lc8/NI;
.super Ljava/lang/Object;
.source "WVXmlResUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainBitmapFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static obtainViewFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "resourcepath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lc8/LI;

    invoke-direct {v0, p1}, Lc8/LI;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "mLoadableResources":Lc8/LI;
    invoke-virtual {v0, p0, p2}, Lc8/LI;->loadLayout(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public static obtainViewFromFile(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    new-instance v3, Lc8/JI;

    invoke-direct {v3}, Lc8/JI;-><init>()V

    invoke-virtual {v3, p1}, Lc8/JI;->openXmlResourceParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 67
    .local v2, "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "Puti Inflater XmlBlock Error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method
