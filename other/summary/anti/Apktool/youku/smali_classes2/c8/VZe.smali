.class public final Lc8/VZe;
.super Ljava/lang/Object;
.source "Dinamic.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Dinamic"

.field private static bfsQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static isDebugable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lc8/VZe;->bfsQueue:Ljava/util/ArrayDeque;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lc8/VZe;->isDebugable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 95
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    new-instance v6, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo v7, "Dinamic bind data failed. rootview or data is null"

    invoke-direct {v6, v7}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 101
    :cond_1
    sget-object v6, Lc8/VZe;->bfsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v6, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    sget-object v6, Lc8/VZe;->bfsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 107
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    move-object v3, v5

    .line 108
    check-cast v3, Landroid/view/ViewGroup;

    .line 109
    .local v3, "root":Landroid/view/ViewGroup;
    invoke-static {v3}, Lc8/VZe;->isNeedBindChildView(Landroid/view/ViewGroup;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 111
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 112
    sget-object v6, Lc8/VZe;->bfsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v3    # "root":Landroid/view/ViewGroup;
    :cond_3
    invoke-static {v5}, Lc8/baf;->getViewProperty(Landroid/view/View;)Lc8/Naf;

    move-result-object v2

    .line 118
    .local v2, "property":Lc8/Naf;
    if-eqz v2, :cond_4

    .line 120
    const/4 v6, 0x0

    iput-object v6, v2, Lc8/Naf;->fixedProperty:Ljava/util/Map;

    .line 122
    :try_start_0
    invoke-static {v5, p1}, Lc8/XZe;->bindData(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_4
    :goto_1
    sget-object v6, Lc8/VZe;->bfsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v4

    .line 124
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Dinamic"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "bind data failed"

    aput-object v9, v7, v8

    invoke-static {v6, v4, v7}, Lc8/taf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "template"    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 64
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->checkValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    :cond_0
    new-instance v3, Lcom/taobao/android/dinamic/exception/DinamicException;

    const-string/jumbo v4, "Dinamic create view failed. Context or template invalid"

    invoke-direct {v3, v4}, Lcom/taobao/android/dinamic/exception/DinamicException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_1
    invoke-static {p2}, Lc8/vaf;->getParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 70
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v1, :cond_2

    .line 72
    :try_start_0
    invoke-static {p0}, Lc8/YZe;->from(Landroid/content/Context;)Lc8/YZe;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lc8/YZe;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "view":Landroid/view/View;
    instance-of v4, v2, Lc8/Qaf;

    if-nez v4, :cond_2

    .line 75
    invoke-static {v2, p1}, Lc8/Daf;->handleRootViewLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Dinamic"

    const-string/jumbo v5, "infalte dinamic view failed"

    invoke-static {v4, v5, v0}, Lc8/taf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    move-object v2, v3

    .line 82
    goto :goto_0
.end method

.method public static downloadTemplates(Ljava/util/List;Lc8/eaf;)V
    .locals 1
    .param p1, "callback"    # Lc8/eaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;",
            "Lc8/eaf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/android/dinamic/tempate/DinamicTemplate;>;"
    new-instance v0, Lc8/UZe;

    invoke-direct {v0, p1}, Lc8/UZe;-><init>(Lc8/eaf;)V

    invoke-static {p0, v0}, Lc8/Paf;->downloadTemplates(Ljava/util/List;Lc8/kef;)V

    .line 223
    return-void
.end method

.method public static getEventHandler(Ljava/lang/String;)Lc8/daf;
    .locals 1
    .param p0, "eventIdenfitier"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p0}, Lc8/aaf;->getEventHandler(Ljava/lang/String;)Lc8/daf;

    move-result-object v0

    return-object v0
.end method

.method public static getViewConstructor(Ljava/lang/String;)Lc8/haf;
    .locals 1
    .param p0, "viewIdentifier"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p0}, Lc8/aaf;->getViewConstructor(Ljava/lang/String;)Lc8/haf;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "debugable"    # Z

    .prologue
    .line 51
    sput-boolean p1, Lc8/VZe;->isDebugable:Z

    .line 52
    invoke-static {p0}, Lc8/Paf;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static isDebugable()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lc8/VZe;->isDebugable:Z

    return v0
.end method

.method private static isNeedBindChildView(Landroid/view/ViewGroup;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 232
    instance-of v0, p0, Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/widget/ListView;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/widget/GridView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "noneNeedBindChild"

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registeEventHandler(Ljava/lang/String;Lc8/daf;)V
    .locals 0
    .param p0, "eventIdentifier"    # Ljava/lang/String;
    .param p1, "handler"    # Lc8/daf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p0, p1}, Lc8/aaf;->registeEventHandler(Ljava/lang/String;Lc8/daf;)V

    .line 159
    return-void
.end method

.method public static registeHttpLoader(Lc8/ref;)V
    .locals 0
    .param p0, "loader"    # Lc8/ref;

    .prologue
    .line 194
    invoke-static {p0}, Lc8/Paf;->updateHttpLoader(Lc8/ref;)V

    .line 195
    return-void
.end method

.method public static registeLogger(Lc8/uaf;)V
    .locals 0
    .param p0, "logger"    # Lc8/uaf;

    .prologue
    .line 203
    invoke-static {p0}, Lc8/taf;->setCustomerLogger(Lc8/uaf;)V

    .line 204
    return-void
.end method

.method public static registeView(Ljava/lang/String;Lc8/haf;)V
    .locals 0
    .param p0, "viewIdentifier"    # Ljava/lang/String;
    .param p1, "constructor"    # Lc8/haf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p0, p1}, Lc8/aaf;->registeView(Ljava/lang/String;Lc8/haf;)V

    .line 144
    return-void
.end method

.method public static registerParser(Ljava/lang/String;Lc8/laf;)Z
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "parser"    # Lc8/laf;

    .prologue
    .line 181
    invoke-static {p0, p1}, Lc8/kaf;->registerParser(Ljava/lang/String;Lc8/laf;)Z

    move-result v0

    return v0
.end method

.method public static unregisteEventHandler(Ljava/lang/String;)V
    .locals 0
    .param p0, "eventIdentify"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p0}, Lc8/aaf;->unregisteEventHandler(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static unregisteView(Ljava/lang/String;)V
    .locals 0
    .param p0, "viewIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Lc8/aaf;->unregisteView(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static unregisterParser(Ljava/lang/String;)Z
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p0}, Lc8/kaf;->unregisterParser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
