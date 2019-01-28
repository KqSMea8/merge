.class public Lc8/Knb;
.super Ljava/lang/Object;
.source "ALPAplus.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://wgo.mmstat.com/%s?"


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spm:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Knb;->params:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public static create()Lc8/Knb;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lc8/Knb;

    invoke-direct {v0}, Lc8/Knb;-><init>()V

    return-object v0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "https://wgo.mmstat.com/%s?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/Knb;->spm:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lc8/Knb;->params:Ljava/util/Map;

    invoke-static {v2}, Lc8/vob;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public send()Z
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/Knb;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lc8/Jnb;

    invoke-direct {v1, p0, v0}, Lc8/Jnb;-><init>(Lc8/Knb;Ljava/lang/String;)V

    invoke-static {v1}, Lc8/Inb;->postAsyncTask(Ljava/lang/Runnable;)V

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method public setProperty(Ljava/util/Map;)Lc8/Knb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/Knb;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "pro":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lc8/Knb;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    :cond_0
    return-object p0
.end method

.method public setSPM(Ljava/lang/String;)Lc8/Knb;
    .locals 1
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iput-object p1, p0, Lc8/Knb;->spm:Ljava/lang/String;

    .line 34
    :cond_0
    return-object p0
.end method
