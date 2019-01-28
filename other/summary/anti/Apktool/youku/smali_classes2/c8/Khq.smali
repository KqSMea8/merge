.class public Lc8/Khq;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "ApacheClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericEntityHttpRequest"
.end annotation


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Vhq;)V
    .locals 5
    .param p1, "request"    # Lc8/Vhq;

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 130
    invoke-virtual {p1}, Lc8/Vhq;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Khq;->method:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lc8/Vhq;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Khq;->setURI(Ljava/net/URI;)V

    .line 134
    invoke-virtual {p1}, Lc8/Vhq;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Rhq;

    .line 135
    .local v0, "header":Lc8/Rhq;
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v0}, Lc8/Rhq;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lc8/Rhq;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lc8/Khq;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 139
    .end local v0    # "header":Lc8/Rhq;
    :cond_0
    new-instance v1, Lc8/Mhq;

    invoke-virtual {p1}, Lc8/Vhq;->getBody()Lc8/Hiq;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Mhq;-><init>(Lc8/Hiq;)V

    invoke-virtual {p0, v1}, Lc8/Khq;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 140
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lc8/Khq;->method:Ljava/lang/String;

    return-object v0
.end method
