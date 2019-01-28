.class public Lc8/eWo;
.super Lc8/Oob;
.source "YKNavigationBarModuleAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/Oob;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMenu(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
    .locals 1
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
    .locals 3
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 34
    invoke-virtual {p1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Lcom/youku/weex/WXPageActivity;

    if-eqz v2, :cond_0

    .line 36
    check-cast v1, Lcom/youku/weex/WXPageActivity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/youku/weex/WXPageActivity;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 37
    .local v0, "actionBar":Lc8/mn;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lc8/mn;->hide()V

    .line 41
    .end local v0    # "actionBar":Lc8/mn;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public onCreateOptionsMenu(Lc8/nVf;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setLeftItem(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Nob;)Lc8/Iob;
    .locals 1
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "onItemClickListener"    # Lc8/Nob;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMoreItem(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Nob;)Lc8/Iob;
    .locals 1
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "onItemClickListener"    # Lc8/Nob;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRightItem(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Nob;)Lc8/Iob;
    .locals 1
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "onItemClickListener"    # Lc8/Nob;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public setStyle(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
    .locals 1
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
    .locals 3
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 46
    invoke-virtual {p1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Lcom/youku/weex/WXPageActivity;

    if-eqz v2, :cond_0

    .line 48
    check-cast v1, Lcom/youku/weex/WXPageActivity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/youku/weex/WXPageActivity;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 49
    .local v0, "actionBar":Lc8/mn;
    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v2, "title"

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc8/mn;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    .end local v0    # "actionBar":Lc8/mn;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public show(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
    .locals 3
    .param p1, "wxsdkInstance"    # Lc8/nVf;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 22
    invoke-virtual {p1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 23
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Lcom/youku/weex/WXPageActivity;

    if-eqz v2, :cond_0

    .line 24
    check-cast v1, Lcom/youku/weex/WXPageActivity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/youku/weex/WXPageActivity;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 25
    .local v0, "actionBar":Lc8/mn;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lc8/mn;->show()V

    .line 29
    .end local v0    # "actionBar":Lc8/mn;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
