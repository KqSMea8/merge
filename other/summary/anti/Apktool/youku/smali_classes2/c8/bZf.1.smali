.class public final Lc8/bZf;
.super Ljava/lang/Object;
.source "AddRuleAction.java"

# interfaces
.implements Lc8/fYf;


# instance fields
.field private final mData:Lcom/alibaba/fastjson/JSONObject;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/bZf;->mType:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lc8/bZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    .line 41
    return-void
.end method

.method private parseFontDO(Lcom/alibaba/fastjson/JSONObject;Lc8/nVf;)Lc8/Tfg;
    .locals 3
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "instance"    # Lc8/nVf;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 66
    :goto_0
    return-object v2

    .line 63
    :cond_0
    const-string/jumbo v2, "src"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "src":Ljava/lang/String;
    const-string/jumbo v2, "fontFamily"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lc8/Tfg;

    invoke-direct {v2, v0, v1, p2}, Lc8/Tfg;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/nVf;)V

    goto :goto_0
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 4
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 45
    const-string/jumbo v2, "fontFace"

    iget-object v3, p0, Lc8/bZf;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lc8/bZf;->mData:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lc8/bZf;->parseFontDO(Lcom/alibaba/fastjson/JSONObject;Lc8/nVf;)Lc8/Tfg;

    move-result-object v1

    .line 47
    .local v1, "fontDO":Lc8/Tfg;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/Tfg;->getFontFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    invoke-virtual {v1}, Lc8/Tfg;->getFontFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ngg;->getFontDO(Ljava/lang/String;)Lc8/Tfg;

    move-result-object v0

    .line 49
    .local v0, "cacheFontDO":Lc8/Tfg;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Tfg;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lc8/Tfg;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    :cond_0
    invoke-static {v1}, Lc8/ngg;->putFontDO(Lc8/Tfg;)V

    .line 51
    invoke-static {v1}, Lc8/ngg;->loadTypeface(Lc8/Tfg;)V

    .line 57
    .end local v0    # "cacheFontDO":Lc8/Tfg;
    .end local v1    # "fontDO":Lc8/Tfg;
    :cond_1
    :goto_0
    return-void

    .line 53
    .restart local v0    # "cacheFontDO":Lc8/Tfg;
    .restart local v1    # "fontDO":Lc8/Tfg;
    :cond_2
    invoke-static {v0}, Lc8/ngg;->loadTypeface(Lc8/Tfg;)V

    goto :goto_0
.end method
