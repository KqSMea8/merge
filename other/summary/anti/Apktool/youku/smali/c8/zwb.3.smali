.class public Lc8/zwb;
.super Ljava/lang/Object;
.source "PackageCache.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->tryToPutZCachePackageIntoMemroyCache(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<",
        "Lc8/SG;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;


# direct methods
.method constructor <init>(Lc8/Awb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;

    .prologue
    .line 282
    iput-object p1, p0, Lc8/zwb;->this$0:Lc8/Awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 282
    check-cast p1, Lc8/SG;

    invoke-virtual {p0, p1}, Lc8/zwb;->call(Lc8/SG;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Lc8/SG;)Ljava/lang/Void;
    .locals 9
    .param p1, "appResConfig"    # Lc8/SG;

    .prologue
    const/4 v8, 0x1

    .line 285
    iget-object v5, p1, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    if-eqz v5, :cond_2

    .line 286
    iget-object v5, p1, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p1, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/RG;

    .line 288
    .local v0, "fileInfo":Lc8/RG;
    iget-object v6, v0, Lc8/RG;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lc8/RG;->url:Ljava/lang/String;

    const-string/jumbo v7, ".wvc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 289
    iget-object v6, v0, Lc8/RG;->url:Ljava/lang/String;

    invoke-static {v6}, Lc8/fH;->getStreamByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "template":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 291
    iget-object v6, v0, Lc8/RG;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    :cond_1
    new-instance v1, Lcom/alibaba/aliweex/cache/Package$Info;

    invoke-direct {v1}, Lcom/alibaba/aliweex/cache/Package$Info;-><init>()V

    .line 296
    .local v1, "info":Lcom/alibaba/aliweex/cache/Package$Info;
    iput-object v3, v1, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    .line 297
    iput-object v4, v1, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    .line 298
    iget-object v6, p0, Lc8/zwb;->this$0:Lc8/Awb;

    invoke-static {v6, v1}, Lc8/Awb;->access$000(Lc8/Awb;Lcom/alibaba/aliweex/cache/Package$Info;)V

    .line 299
    iget-object v6, p0, Lc8/zwb;->this$0:Lc8/Awb;

    invoke-static {v6, v8}, Lc8/Awb;->access$102(Lc8/Awb;Z)Z

    goto :goto_0

    .line 304
    .end local v0    # "fileInfo":Lc8/RG;
    .end local v1    # "info":Lcom/alibaba/aliweex/cache/Package$Info;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "template":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method
