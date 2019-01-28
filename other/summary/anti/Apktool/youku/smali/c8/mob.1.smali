.class public Lc8/mob;
.super Lc8/iob;
.source "ALPTBJumpParam.java"


# instance fields
.field protected action:Ljava/lang/String;

.field public currentViewName:Ljava/lang/String;

.field public extraParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public module:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lc8/iob;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    .line 49
    const-string/jumbo v0, "lp"

    iput-object v0, p0, Lc8/mob;->source:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected addExtraParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method public getExtraParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const-string/jumbo v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addExtraParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lc8/mob;->currentViewName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string/jumbo v0, "sourceVC"

    iget-object v1, p0, Lc8/mob;->currentViewName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addExtraParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getH5DegradeParams()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lc8/mob;->getExtraParams()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc8/mob;->addH5DegradeParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lc8/mob;->params:Ljava/util/HashMap;

    const-string/jumbo v3, "tag"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 150
    const-string/jumbo v3, "tag"

    iget-object v2, p0, Lc8/mob;->params:Ljava/util/HashMap;

    const-string/jumbo v4, "tag"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lc8/mob;->addH5DegradeParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    iget-object v2, p0, Lc8/mob;->params:Ljava/util/HashMap;

    const-string/jumbo v3, "TTID"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 154
    const-string/jumbo v3, "TTID"

    iget-object v2, p0, Lc8/mob;->params:Ljava/util/HashMap;

    const-string/jumbo v4, "TTID"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lc8/mob;->addH5DegradeParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_3
    :goto_1
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v2

    iget-object v2, v2, Lc8/job;->utdid:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 160
    const-string/jumbo v2, "utdid"

    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v3

    iget-object v3, v3, Lc8/job;->utdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc8/mob;->addH5DegradeParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_4
    iget-object v2, p0, Lc8/mob;->source:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 164
    const-string/jumbo v2, "source"

    iget-object v3, p0, Lc8/mob;->source:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc8/mob;->addH5DegradeParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_5
    invoke-super {p0}, Lc8/iob;->getH5DegradeParams()Ljava/util/HashMap;

    move-result-object v2

    return-object v2

    .line 155
    :cond_6
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v2

    iget-object v2, v2, Lc8/job;->TTID:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 156
    const-string/jumbo v2, "TTID"

    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v3

    iget-object v3, v3, Lc8/job;->TTID:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc8/mob;->addH5DegradeParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string/jumbo v0, "nav"

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lc8/mob;->module:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v0, "module"

    iget-object v1, p0, Lc8/mob;->module:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lc8/mob;->action:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    const-string/jumbo v0, "action"

    iget-object v1, p0, Lc8/mob;->action:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lc8/mob;->source:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 77
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lc8/mob;->source:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->appkey:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 81
    const-string/jumbo v0, "appkey"

    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v1

    iget-object v1, v1, Lc8/job;->appkey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_3
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->TTID:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 85
    const-string/jumbo v0, "TTID"

    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v1

    iget-object v1, v1, Lc8/job;->TTID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_4
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->utdid:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 89
    const-string/jumbo v0, "utdid"

    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v1

    iget-object v1, v1, Lc8/job;->utdid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_5
    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    const-string/jumbo v1, "tmall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    const-string/jumbo v1, "tmall_scheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 95
    :cond_6
    const-string/jumbo v0, "paramsKVEncode"

    const-string/jumbo v1, "ture"

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_7
    :goto_0
    invoke-super {p0}, Lc8/iob;->getParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 98
    :cond_8
    invoke-virtual {p0}, Lc8/mob;->getExtraParams()Ljava/util/HashMap;

    .line 99
    iget-object v0, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 100
    const-string/jumbo v0, "params"

    iget-object v1, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    invoke-static {v1}, Lc8/yob;->extraParams2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUnUrlEnCodeParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    const-string/jumbo v1, "tmall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/mob;->linkKey:Ljava/lang/String;

    const-string/jumbo v1, "tmall_scheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lc8/mob;->getExtraParams()Ljava/util/HashMap;

    .line 114
    iget-object v0, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    const-string/jumbo v0, "params"

    iget-object v1, p0, Lc8/mob;->extraParams:Ljava/util/HashMap;

    invoke-static {v1}, Lc8/yob;->extraParamsKVEncode2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/mob;->addUnUrlEnCodeParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    invoke-super {p0}, Lc8/iob;->getUnUrlEnCodeParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public isInFirstParam(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    if-eqz p1, :cond_1

    .line 223
    sget-object v0, Lc8/lnb;->FIRST_PARAM_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 224
    .local v3, "paramKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const/4 v4, 0x1

    .line 231
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "paramKey":Ljava/lang/String;
    :goto_1
    return v4

    .line 223
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "paramKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "paramKey":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 202
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lc8/mob;->isInFirstParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p0, p1, p2}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p0, p1, p2}, Lc8/mob;->addExtraParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 192
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lc8/mob;->isInFirstParam(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc8/mob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc8/mob;->addExtraParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
