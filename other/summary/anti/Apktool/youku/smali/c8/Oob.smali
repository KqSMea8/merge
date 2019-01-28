.class public abstract Lc8/Oob;
.super Ljava/lang/Object;
.source "INavigationBarModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Nob;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public abstract hasMenu(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
.end method

.method public abstract hide(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
.end method

.method public abstract onCreateOptionsMenu(Lc8/nVf;Landroid/view/Menu;)Z
.end method

.method public abstract setLeftItem(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Nob;)Lc8/Iob;
.end method

.method public abstract setMoreItem(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Nob;)Lc8/Iob;
.end method

.method public abstract setRightItem(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Nob;)Lc8/Iob;
.end method

.method public abstract setStyle(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
.end method

.method public abstract setTitle(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
.end method

.method public abstract show(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
.end method

.method public showMenu(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;)Lc8/Iob;
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "options"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 31
    new-instance v0, Lc8/Iob;

    invoke-direct {v0}, Lc8/Iob;-><init>()V

    .line 32
    .local v0, "error":Lc8/Iob;
    const-string/jumbo v1, "WX_NOT_SUPPORTED"

    iput-object v1, v0, Lc8/Iob;->result:Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "Only Taobao app support showMenu(), check implement in TBNavBarAdapter"

    iput-object v1, v0, Lc8/Iob;->message:Ljava/lang/String;

    .line 34
    return-object v0
.end method
