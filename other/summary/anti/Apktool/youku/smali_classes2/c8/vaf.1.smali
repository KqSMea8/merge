.class public Lc8/vaf;
.super Ljava/lang/Object;
.source "DinamicParser.java"


# static fields
.field private static fileParser:Lc8/waf;

.field private static resParser:Lc8/Aaf;

.field private static sdCardFileParser:Lc8/Baf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lc8/Aaf;

    invoke-direct {v0}, Lc8/Aaf;-><init>()V

    sput-object v0, Lc8/vaf;->resParser:Lc8/Aaf;

    .line 19
    new-instance v0, Lc8/waf;

    invoke-direct {v0}, Lc8/waf;-><init>()V

    sput-object v0, Lc8/vaf;->fileParser:Lc8/waf;

    .line 20
    new-instance v0, Lc8/Baf;

    invoke-direct {v0}, Lc8/Baf;-><init>()V

    sput-object v0, Lc8/vaf;->sdCardFileParser:Lc8/Baf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .param p0, "template"    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Lc8/VZe;->isDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Lc8/vaf;->sdCardFileParser:Lc8/Baf;

    invoke-virtual {v1, p0}, Lc8/Baf;->isFileExist(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lc8/vaf;->sdCardFileParser:Lc8/Baf;

    invoke-virtual {v1, p0}, Lc8/Baf;->openXmlResourceParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 32
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/Paf;->isLocalLayoutFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    sget-object v1, Lc8/vaf;->fileParser:Lc8/waf;

    invoke-virtual {v1, p0}, Lc8/waf;->openXmlResourceParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 38
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-static {v1}, Lc8/Paf;->getDefaultLayoutId(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 39
    sget-object v1, Lc8/vaf;->resParser:Lc8/Aaf;

    invoke-virtual {v1, p0}, Lc8/Aaf;->openXmlResourceParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 43
    :cond_2
    return-object v0
.end method
