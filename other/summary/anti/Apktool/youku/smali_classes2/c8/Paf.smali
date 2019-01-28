.class public Lc8/Paf;
.super Ljava/lang/Object;
.source "DinamicTemplateHelper.java"


# static fields
.field private static final SPLITTER:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String; = "Dinamic.TemplateHelper"

.field private static context:Landroid/content/Context;

.field private static layoutFileManager:Lc8/mef;

.field private static resCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lc8/Paf;->resCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNeedDownload(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lc8/lef;
    .locals 3
    .param p0, "template"    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 137
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    invoke-static {p0}, Lc8/Paf;->getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "templateKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    sget-object v2, Lc8/Paf;->layoutFileManager:Lc8/mef;

    invoke-virtual {v2, v1}, Lc8/mef;->readLocalLayoutFileAndUpdateDB(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 147
    new-instance v0, Lc8/lef;

    invoke-direct {v0}, Lc8/lef;-><init>()V

    .line 148
    .local v0, "layoutFileRequest":Lc8/lef;
    iput-object v1, v0, Lc8/lef;->layoutKey:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    iput-object v2, v0, Lc8/lef;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public static downloadTemplates(Ljava/util/List;Lc8/kef;)V
    .locals 10
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "loadListener"    # Lc8/kef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;",
            "Lc8/kef;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/android/dinamic/tempate/DinamicTemplate;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 119
    .local v3, "requestSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/android/trade/template/manager/LayoutFileManager$LayoutFileRequest;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    .line 120
    .local v5, "template":Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    invoke-static {v5}, Lc8/Paf;->checkNeedDownload(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lc8/lef;

    move-result-object v2

    .line 121
    .local v2, "request":Lc8/lef;
    if-eqz v2, :cond_2

    .line 122
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const-string/jumbo v6, "Dinamic.TemplateHelper"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v2, Lc8/lef;->layoutKey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lc8/taf;->d(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 127
    .end local v2    # "request":Lc8/lef;
    .end local v5    # "template":Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v4, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/android/trade/template/manager/LayoutFileManager$LayoutFileRequest;>;"
    new-instance v0, Lc8/mef;

    sget-object v6, Lc8/Paf;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lc8/mef;-><init>(Landroid/content/Context;Lc8/ref;)V

    .line 131
    .local v0, "fileManager":Lc8/mef;
    invoke-virtual {v0, v4, p1}, Lc8/mef;->sendLayoutFileRequests(Ljava/util/List;Lc8/kef;)V

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lc8/Paf;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefaultLayoutId(Ljava/lang/String;)I
    .locals 6
    .param p0, "templateName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 56
    sget-object v3, Lc8/Paf;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v2

    .line 60
    :cond_1
    sget-object v3, Lc8/Paf;->resCache:Landroid/util/LruCache;

    invoke-virtual {v3, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 62
    .local v1, "layout":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 64
    :try_start_0
    sget-object v3, Lc8/Paf;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "layout"

    sget-object v5, Lc8/Paf;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 66
    sget-object v3, Lc8/Paf;->resCache:Landroid/util/LruCache;

    invoke-virtual {v3, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Dinamic.TemplateHelper"

    const-string/jumbo v4, "Get layout parser exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getLayoutParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p0, "template"    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    .prologue
    const/4 v2, 0x0

    .line 76
    sget-object v3, Lc8/Paf;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v2

    .line 81
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-static {v3}, Lc8/Paf;->getDefaultLayoutId(Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, "templateRes":I
    if-lez v1, :cond_0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Res parser is applied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    sget-object v3, Lc8/Paf;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 86
    .end local v1    # "templateRes":I
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Dinamic.TemplateHelper"

    const-string/jumbo v4, "Get layout parser exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getTemplateCategory(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;I)Ljava/lang/String;
    .locals 2
    .param p0, "template"    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    .param p1, "index"    # I

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTemplateCategory(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "templateName"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;
    .locals 2
    .param p0, "template"    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTemplateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "templateName"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/Paf;->context:Landroid/content/Context;

    .line 32
    new-instance v0, Lc8/mef;

    sget-object v1, Lc8/Paf;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/mef;-><init>(Landroid/content/Context;Lc8/ref;)V

    sput-object v0, Lc8/Paf;->layoutFileManager:Lc8/mef;

    .line 33
    return-void
.end method

.method public static isLocalLayoutFileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "templateName"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lc8/Paf;->layoutFileManager:Lc8/mef;

    invoke-static {p0, p1}, Lc8/Paf;->getTemplateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/mef;->isLocalLayoutFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readLocalTemplate(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "templateName"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {p0, p1}, Lc8/Paf;->getTemplateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "templateKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    :goto_0
    return-object v2

    .line 99
    :cond_0
    :try_start_0
    sget-object v3, Lc8/Paf;->layoutFileManager:Lc8/mef;

    invoke-virtual {v3, v1}, Lc8/mef;->readLocalLayoutFileWithoutAccessDB(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Dinamic.TemplateHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail to read local layout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateHttpLoader(Lc8/ref;)V
    .locals 2
    .param p0, "loader"    # Lc8/ref;

    .prologue
    .line 157
    if-eqz p0, :cond_0

    .line 158
    new-instance v0, Lc8/mef;

    sget-object v1, Lc8/Paf;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lc8/mef;-><init>(Landroid/content/Context;Lc8/ref;)V

    sput-object v0, Lc8/Paf;->layoutFileManager:Lc8/mef;

    .line 160
    :cond_0
    return-void
.end method
