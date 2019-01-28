.class public final Lc8/Vhq;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private final body:Lc8/Hiq;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Rhq;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lc8/Hiq;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "body"    # Lc8/Hiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Rhq;",
            ">;",
            "Lc8/Hiq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Method must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    if-nez p2, :cond_1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "URL must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p1, p0, Lc8/Vhq;->method:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lc8/Vhq;->url:Ljava/lang/String;

    .line 40
    if-nez p3, :cond_2

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Vhq;->headers:Ljava/util/List;

    .line 46
    :goto_0
    iput-object p4, p0, Lc8/Vhq;->body:Lc8/Hiq;

    .line 47
    return-void

    .line 43
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Vhq;->headers:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getBody()Lc8/Hiq;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/Vhq;->body:Lc8/Hiq;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Rhq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lc8/Vhq;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Vhq;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/Vhq;->url:Ljava/lang/String;

    return-object v0
.end method
