.class public Lc8/Opb;
.super Lc8/scg;
.source "WXTabbar.java"

# interfaces
.implements Lc8/rpb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mpb;,
        Lc8/Npb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/scg",
        "<",
        "Lc8/tpb;",
        ">;",
        "Lc8/rpb;"
    }
.end annotation


# static fields
.field public static final EVENT_TABSELECTED:Ljava/lang/String; = "tabselected"

.field public static final SELECT_INDEX:Ljava/lang/String; = "selectedIndex"

.field public static final TAB_ITEMS:Ljava/lang/String; = "tabItems"


# instance fields
.field private mBackgroundDrawable:Lc8/Ieg;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Npb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Opb;->mItems:Ljava/util/List;

    .line 52
    return-void
.end method

.method private getSelectedIndex()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lc8/Opb;->getDomObject()Lc8/qYf;

    move-result-object v0

    .line 111
    .local v0, "dom":Lc8/qYf;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    const-string/jumbo v4, "selectedIndex"

    invoke-virtual {v3, v4}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "index":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 119
    .end local v1    # "index":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 116
    .restart local v1    # "index":Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "index":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private updateTabState(IZ)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "isSelected"    # Z

    .prologue
    .line 143
    iget-object v4, p0, Lc8/Opb;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Npb;

    .line 144
    .local v2, "item":Lc8/Npb;
    invoke-virtual {v2, p2}, Lc8/Npb;->setSelectedState(Z)V

    .line 145
    if-nez p2, :cond_0

    .line 146
    iget-object v4, v2, Lc8/Npb;->mBadge:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, v2, Lc8/Npb;->mBadge:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lc8/Opb;->getInstance()Lc8/nVf;

    move-result-object v3

    .line 151
    .local v3, "wxsdkInstance":Lc8/nVf;
    instance-of v4, v3, Lc8/Abg;

    if-eqz v4, :cond_1

    .line 152
    invoke-virtual {p0}, Lc8/Opb;->getInstance()Lc8/nVf;

    move-result-object v1

    check-cast v1, Lc8/Abg;

    .line 153
    .local v1, "finder":Lc8/Abg;
    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v2}, Lc8/Npb;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lc8/Abg;->getEmbed(Ljava/lang/String;)Lc8/Dbg;

    move-result-object v0

    .line 155
    .local v0, "comp":Lc8/Dbg;
    if-eqz v0, :cond_1

    .line 156
    if-eqz p2, :cond_2

    const-string/jumbo v4, "visible"

    :goto_0
    invoke-virtual {v0, v4}, Lc8/Dbg;->setVisibility(Ljava/lang/String;)V

    .line 160
    .end local v0    # "comp":Lc8/Dbg;
    .end local v1    # "finder":Lc8/Abg;
    :cond_1
    return-void

    .line 156
    .restart local v0    # "comp":Lc8/Dbg;
    .restart local v1    # "finder":Lc8/Abg;
    :cond_2
    const-string/jumbo v4, "hidden"

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lc8/Opb;->initComponentHostView(Landroid/content/Context;)Lc8/tpb;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/tpb;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v0, Lc8/tpb;

    invoke-direct {v0, p1, p0}, Lc8/tpb;-><init>(Landroid/content/Context;Lc8/Opb;)V

    .line 57
    .local v0, "bar":Lc8/tpb;
    invoke-virtual {v0, p0}, Lc8/tpb;->setOnTabSelectedListener(Lc8/rpb;)V

    .line 58
    return-object v0
.end method

.method public onTabReselected(Lc8/spb;)V
    .locals 0
    .param p1, "tab"    # Lc8/spb;

    .prologue
    .line 186
    return-void
.end method

.method public onTabSelected(Lc8/spb;)V
    .locals 6
    .param p1, "tab"    # Lc8/spb;

    .prologue
    .line 165
    invoke-virtual {p1}, Lc8/spb;->getPosition()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lc8/Opb;->updateTabState(IZ)V

    .line 167
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 168
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "index"

    invoke-virtual {p1}, Lc8/spb;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v3, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v1, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "selectedIndex"

    invoke-virtual {p1}, Lc8/spb;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v3, "attrs"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Lc8/Opb;->getInstance()Lc8/nVf;

    move-result-object v3

    invoke-virtual {p0}, Lc8/Opb;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tabselected"

    invoke-virtual {v3, v4, v5, v2, v1}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 177
    return-void
.end method

.method public onTabUnselected(Lc8/spb;)V
    .locals 2
    .param p1, "tab"    # Lc8/spb;

    .prologue
    .line 181
    invoke-virtual {p1}, Lc8/spb;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/Opb;->updateTabState(IZ)V

    .line 182
    return-void
.end method

.method public setSelectIndex(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation runtime Lc8/vbg;
        name = "selectedIndex"
    .end annotation

    .prologue
    .line 63
    if-ltz p1, :cond_0

    iget-object v2, p0, Lc8/Opb;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lc8/Opb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/tpb;

    .line 67
    .local v0, "bar":Lc8/tpb;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Lc8/tpb;->getTabAt(I)Lc8/spb;

    move-result-object v1

    .line 69
    .local v1, "tab":Lc8/spb;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Lc8/spb;->select()V

    goto :goto_0
.end method

.method public setTabItems(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 9
    .param p1, "items"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation runtime Lc8/vbg;
        name = "tabItems"
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 124
    invoke-virtual {p0}, Lc8/Opb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/tpb;

    .line 125
    .local v0, "bar":Lc8/tpb;
    invoke-virtual {v0}, Lc8/tpb;->removeAllTabs()V

    .line 126
    iget-object v5, p0, Lc8/Opb;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 140
    :cond_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lc8/Opb;->getSelectedIndex()I

    move-result v4

    .line 133
    .local v4, "selected":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 134
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {p0}, Lc8/Opb;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lc8/Opb;->getInstance()Lc8/nVf;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lc8/Npb;->create(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;Lc8/nVf;)Lc8/Npb;

    move-result-object v2

    .line 135
    .local v2, "item":Lc8/Npb;
    invoke-virtual {v2, v6}, Lc8/Npb;->setSelectedState(Z)V

    .line 136
    iget-object v5, p0, Lc8/Opb;->mItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v0}, Lc8/tpb;->newTab()Lc8/spb;

    move-result-object v5

    invoke-virtual {v2}, Lc8/Npb;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Lc8/spb;->setCustomView(Landroid/view/View;)Lc8/spb;

    move-result-object v7

    if-ne v1, v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v7, v5}, Lc8/tpb;->addTab(Lc8/spb;Z)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v5, v6

    .line 137
    goto :goto_1
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lc8/scg;->updateProperties(Ljava/util/Map;)V

    .line 191
    return-void
.end method
